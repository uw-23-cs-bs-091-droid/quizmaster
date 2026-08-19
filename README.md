# QuizMaster

QuizMaster is a full-stack interactive quiz website that allows users to select quiz categories, answer multiple-choice questions, and view their results.

## Live Demo

[Play QuizMaster] https://quiz-cloudflare.quiz-cloudflare.workers.dev

## Features

- Multiple quiz categories
- Multiple-choice questions
- Automatic score calculation
- Result percentage
- Database-backed quiz questions
- REST API integration
- Responsive web interface
- Cloudflare D1 database
- Deployed using Cloudflare Workers

## Technologies Used

- HTML
- CSS
- JavaScript
- Node.js
- Express.js
- REST APIs
- SQL
- Cloudflare Workers
- Cloudflare D1

## Database

QuizMaster uses Cloudflare D1, a serverless SQL database based on SQLite, to store quiz categories, questions, and quiz results.

## Project Structure


quizmaster/
├──> public/
├──> src/
├──>test/
├──>computer.sql
├──>javascript.sql
├──>questions.sql
├──>data.sql
├──>schema.sql
├──>package.json
└──>wrangler.jsonc
