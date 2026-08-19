INSERT INTO quizzes (id, title)
VALUES (1, 'JavaScript Basics');

INSERT INTO questions
(id, quiz_id, question, options, correct_answer)
VALUES
(
    1,
    1,
    'Which keyword is used to declare a variable in JavaScript?',
    '["var","print","define","variable"]',
    'var'
);

INSERT INTO questions
(id, quiz_id, question, options, correct_answer)
VALUES
(
    2,
    1,
    'Which language does Node.js execute?',
    '["Python","JavaScript","C++","PHP"]',
    'JavaScript'
);
INSERT INTO quizzes (title) VALUES
('General Knowledge'),
('Database Basics');
-- ============================================
-- GENERAL KNOWLEDGE QUESTIONS
-- quiz_id = 2
-- ============================================

INSERT INTO questions (quiz_id, question, options, correct_answer) VALUES
(2, 'What is the capital city of France?', '["Paris","London","Berlin","Rome"]', 'Paris'),

(2, 'Which planet is known as the Red Planet?', '["Earth","Mars","Jupiter","Venus"]', 'Mars'),

(2, 'Who wrote the play Romeo and Juliet?', '["William Shakespeare","Charles Dickens","Mark Twain","Leo Tolstoy"]', 'William Shakespeare'),

(2, 'How many continents are there in the world?', '["5","6","7","8"]', '7'),

(2, 'Which is the largest ocean on Earth?', '["Atlantic Ocean","Indian Ocean","Pacific Ocean","Arctic Ocean"]', 'Pacific Ocean'),

(2, 'What is the currency of Japan?', '["Yuan","Won","Yen","Dollar"]', 'Yen'),

(2, 'Which animal is known as the King of the Jungle?', '["Tiger","Lion","Elephant","Leopard"]', 'Lion'),

(2, 'What is the largest planet in our solar system?', '["Earth","Saturn","Jupiter","Neptune"]', 'Jupiter'),

(2, 'Which gas do humans need to breathe to survive?', '["Carbon Dioxide","Oxygen","Nitrogen","Hydrogen"]', 'Oxygen'),

(2, 'How many days are there in a leap year?', '["364","365","366","367"]', '366');


-- ============================================
-- DATABASE BASICS QUESTIONS
-- quiz_id = 3
-- ============================================

INSERT INTO questions (quiz_id, question, options, correct_answer) VALUES
(3, 'What does DBMS stand for?', '["Database Management System","Data Backup Management System","Database Monitoring Service","Data Management Software"]', 'Database Management System'),

(3, 'Which language is commonly used to query relational databases?', '["HTML","SQL","CSS","Python"]', 'SQL'),

(3, 'Which SQL command is used to retrieve data from a database?', '["GET","SELECT","FETCH","READ"]', 'SELECT'),

(3, 'Which SQL command is used to add new records to a table?', '["ADD","INSERT","CREATE","UPDATE"]', 'INSERT'),

(3, 'Which SQL command is used to modify existing records?', '["CHANGE","MODIFY","UPDATE","ALTER"]', 'UPDATE'),

(3, 'Which SQL command is used to remove records from a table?', '["REMOVE","DELETE","DROP","CLEAR"]', 'DELETE'),

(3, 'What is a primary key?', '["A key used to uniquely identify each record","A key used to delete a database","A password for the database","A key used to sort records"]', 'A key used to uniquely identify each record'),

(3, 'Which SQL command is used to create a new table?', '["MAKE TABLE","NEW TABLE","CREATE TABLE","BUILD TABLE"]', 'CREATE TABLE'),

(3, 'What is a foreign key used for?', '["To encrypt data","To connect tables together","To delete records","To create a database"]', 'To connect tables together'),

(3, 'Which of the following is a relational database management system?', '["MySQL","HTML","Windows","Google Chrome"]', 'MySQL');
INSERT INTO quizzes (title) VALUES
('General Knowledge'),
('Database Basics');
-- General Knowledge (quiz_id = 3)

INSERT INTO questions (quiz_id, question, options, correct_answer) VALUES
(3, 'What is the capital city of France?', '["Paris","London","Berlin","Rome"]', 'Paris'),
(3, 'Which planet is known as the Red Planet?', '["Earth","Mars","Jupiter","Venus"]', 'Mars'),
(3, 'Who wrote the play Romeo and Juliet?', '["William Shakespeare","Charles Dickens","Mark Twain","Leo Tolstoy"]', 'William Shakespeare'),
(3, 'How many continents are there in the world?', '["5","6","7","8"]', '7'),
(3, 'Which is the largest ocean on Earth?', '["Atlantic Ocean","Indian Ocean","Pacific Ocean","Arctic Ocean"]', 'Pacific Ocean'),
(3, 'What is the currency of Japan?', '["Yuan","Won","Yen","Dollar"]', 'Yen'),
(3, 'Which animal is known as the King of the Jungle?', '["Tiger","Lion","Elephant","Leopard"]', 'Lion'),
(3, 'What is the largest planet in our solar system?', '["Earth","Saturn","Jupiter","Neptune"]', 'Jupiter'),
(3, 'Which gas do humans need to breathe to survive?', '["Carbon Dioxide","Oxygen","Nitrogen","Hydrogen"]', 'Oxygen'),
(3, 'How many days are there in a leap year?', '["364","365","366","367"]', '366');


-- Database Basics (quiz_id = 4)

INSERT INTO questions (quiz_id, question, options, correct_answer) VALUES
(4, 'What does DBMS stand for?', '["Database Management System","Data Backup Management System","Database Monitoring Service","Data Management Software"]', 'Database Management System'),
(4, 'Which language is commonly used to query relational databases?', '["HTML","SQL","CSS","Python"]', 'SQL'),
(4, 'Which SQL command is used to retrieve data from a database?', '["GET","SELECT","FETCH","READ"]', 'SELECT'),
(4, 'Which SQL command is used to add new records to a table?', '["ADD","INSERT","CREATE","UPDATE"]', 'INSERT'),
(4, 'Which SQL command is used to modify existing records?', '["CHANGE","MODIFY","UPDATE","ALTER"]', 'UPDATE'),
(4, 'Which SQL command is used to remove records from a table?', '["REMOVE","DELETE","DROP","CLEAR"]', 'DELETE'),
(4, 'What is a primary key?', '["A key used to uniquely identify each record","A key used to delete a database","A password for the database","A key used to sort records"]', 'A key used to uniquely identify each record'),
(4, 'Which SQL command is used to create a new table?', '["MAKE TABLE","NEW TABLE","CREATE TABLE","BUILD TABLE"]', 'CREATE TABLE'),
(4, 'What is a foreign key used for?', '["To encrypt data","To connect tables together","To delete records","To create a database"]', 'To connect tables together'),
(4, 'Which of the following is a relational database management system?', '["MySQL","HTML","Windows","Google Chrome"]', 'MySQL');