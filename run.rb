require './quiz_data.rb'
require './quiz_question.rb'

ruby_quiz = QuizData.new("Ruby Quiz", [
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
])

quiz_game = QuizQuestion.new
quiz_game.add_quiz(ruby_quiz)

quiz_game.start