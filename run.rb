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

quiz_game = QuizQuestion.new
quiz_game.add_quiz(ruby_quiz)

quiz_game.start