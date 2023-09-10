require './quiz_data.rb'
require './quiz_question.rb'

ruby_quiz = QuizData.new("Ruby Quiz (10 questions)", [
    {
        question: "What type of programming language is Ruby?",
        options: ["Procedural", "Object-oriented", "Functional", "Scripting"],
        answer: 1,
    },
    {
        question: "Who is the creator of Ruby?",
        options: ["Guido van Rossum", "Linus Torvalds", "Larry Wall", "Yukihiro Matsumoto"],
        answer: 3,
    },
    {
        question: "Which of the following is the correct way to define a class in Ruby?",
        options: ["class MyClass", "class = MyClass", "Myclass class", "Myclass()"],
        answer: 0,
    },
    {
        question: "Variables that start with two '@' symbols are what kind of variables in Ruby",
        options: ["Local variable", "Global variable", "Instance variable", "Class variable"],
        answer: 3,
    },
    {
        question: "Which of the languages syntax matches with the Ruby’s syntax?",
        options: ["Python", "Perl", "Java", "C++"],
        answer: 1,
    },
    {
        question: "What is the extension used for saving the ruby file?",
        options: ["rrb", "ruby", "rb", "rub"],
        answer: 2,
    },
    {
        question: "Ruby runs on which platform?",
        options: ["Mac OS", "Linux", "Windows", "All of the Above"],
        answer: 3,
    },
    {
        question: "What does the .upcase method do?",
        options: ["Convert the string to lowercase", "Convert the string to uppercase", "Convert only lowercase string to uppercase and vice-versa", "None of above"],
        answer: 1,
    },
    {
        question: "Ruby was written in which language?",
        options: ["C++", "C", "Java", "Objective C"],
        answer: 1,
    },
    {
        question: "What is Ruby?",
        options: ["markup language", "procedural language", "scripting language", "stylesheet language"],
        answer: 2,
    },
])
general_knowledge = QuizData.new("General Knowledge (5 Questions)", [
    {
        question: "What is the capital of Japan?",
        options: ["Tokyo", "Kyoto", "Osaka", "Seoul"],
        answer: 0,
    },
    {
        question: "Who painted the Mona Lisa?",
        options: ["pablo Picasso", "Vincent van Gogh", "Leonardo da Vinci", "Michelangelo"],
        answer: 2,
    },
    {
        question: "Which gas do plants absorb from the atmosphere?",
        options: ["Oxygen", "Carbon dioxide", "Nitrogen", "Hydrogen"],
        answer: 1,
    },
    {
        question: "Who wrote the novel '1984'?",
        options: ["J.K. Rowling", "George Orwell", "Ernest Hemingway", "F.Scott Fitzgerald"],
        answer: 1,
    },
    {
        question: "What is the largest planet in our solar system?",
        options: ["Earth", "Venus", "Mars", "Jupiter"],
        answer: 3,
    },
])
history = QuizData.new("History (5 Questions)", [
    {
        question: "Who was the first President of the United States?",
        options: ["John Adams", "Thomas Jefferson", "Benjamin Franklin", "George Washington"],
        answer: 3,
    },
    {
        question: "In which year did Christopher Columbus first arrive in the Americas?",
        options: ["1492", "1521", "1607", "1776"],
        answer: 0,
    },
    {
        question: "Who was the leader of the Soviet Union during the Cuban Missile Crisis?",
        options: ["Joseph Stalin", "Vladmir Putin", "Nikita Khrushchev", "Mikhail Gorbachev"],
        answer: 2,
    },
    {
        question: "The Great Wall of China was primarily built to defend against which group?",
        options: ["Mongols", "Romans", "Vikings", "Aztecs"],
        answer: 0,
    },
    {
        question: "What year did World War I begin?",
        options: ["1905", "1914", "1939", "1945"],
        answer: 1,
    },
])

quiz_game = QuizQuestion.new
quiz_game.add_quiz(ruby_quiz)
quiz_game.add_quiz(general_knowledge)
quiz_game.add_quiz(history)

quiz_game.start