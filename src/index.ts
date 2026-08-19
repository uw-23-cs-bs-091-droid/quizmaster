interface Env {
  quiz_db: D1Database;
}

export default {
  async fetch(request: Request, env: Env): Promise<Response> {
    const url = new URL(request.url);

    // GET /api/quizzes
    // Returns all available quizzes
    if (url.pathname === "/api/quizzes" && request.method === "GET") {
      try {
        const quizzes = await env.quiz_db
          .prepare("SELECT id, title FROM quizzes ORDER BY id")
          .all();

        return Response.json({
          quizzes: quizzes.results
        });
      } catch (error) {
        return Response.json(
          {
            error: "Failed to fetch quizzes",
            details: String(error)
          },
          { status: 500 }
        );
      }
    }

    // GET /api/quiz?id=1
    // Returns one selected quiz and its questions
    if (url.pathname === "/api/quiz" && request.method === "GET") {
      try {
        const quizId = Number(url.searchParams.get("id"));

        if (!quizId) {
          return Response.json(
            { error: "Quiz ID is required" },
            { status: 400 }
          );
        }

        const quiz = await env.quiz_db
          .prepare("SELECT id, title FROM quizzes WHERE id = ?")
          .bind(quizId)
          .first();

        if (!quiz) {
          return Response.json(
            { error: "Quiz not found" },
            { status: 404 }
          );
        }

        const questions = await env.quiz_db
          .prepare(`
            SELECT id, quiz_id, question, options
            FROM questions
            WHERE quiz_id = ?
            ORDER BY id
          `)
          .bind(quizId)
          .all();

        return Response.json({
          quiz,
          questions: questions.results
        });
      } catch (error) {
        return Response.json(
          {
            error: "Failed to fetch quiz",
            details: String(error)
          },
          { status: 500 }
        );
      }
    }

    // POST /responses
    if (url.pathname === "/responses" && request.method === "POST") {
      try {
        const body = await request.json() as {
          quiz_id?: number;
          answers?: Record<string, string>;
        };

        const quizId = body.quiz_id ?? 1;
        const answers = body.answers ?? {};

        const questions = await env.quiz_db
          .prepare(`
            SELECT id, correct_answer
            FROM questions
            WHERE quiz_id = ?
            ORDER BY id
          `)
          .bind(quizId)
          .all();

        let score = 0;

        for (const question of questions.results as {
          id: number;
          correct_answer: string;
        }[]) {
          if (answers[String(question.id)] === question.correct_answer) {
            score++;
          }
        }

        const total = questions.results.length;

        const percentage =
          total === 0 ? 0 : (score / total) * 100;

        await env.quiz_db
          .prepare(`
            INSERT INTO results
            (quiz_id, score, total, percentage)
            VALUES (?, ?, ?, ?)
          `)
          .bind(quizId, score, total, percentage)
          .run();

        return Response.json({
          quiz_id: quizId,
          score,
          total,
          percentage
        });
      } catch (error) {
        return Response.json(
          {
            error: "Failed to submit quiz",
            details: String(error)
          },
          { status: 500 }
        );
      }
    }

    // GET /results
    if (url.pathname === "/results" && request.method === "GET") {
      try {
        const results = await env.quiz_db
          .prepare(`
            SELECT
              id,
              quiz_id,
              score,
              total,
              percentage,
              created_at
            FROM results
            ORDER BY id DESC
          `)
          .all();

        return Response.json(results.results);
      } catch (error) {
        return Response.json(
          {
            error: "Failed to fetch results",
            details: String(error)
          },
          { status: 500 }
        );
      }
    }

    // Test route
    if (url.pathname === "/message") {
      return new Response("Quiz API is working!");
    }

    return new Response("Not Found", { status: 404 });
  }
};