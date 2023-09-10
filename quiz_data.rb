class QuizData
    attr_accessor :name

    def initialize(name, questions)
        @name = name
        @questions = questions.shuffle
        @score = 0
    end

    def play
        puts "Welcome to the #{@name} Quiz!"
        @questions.each_with_index do |question_data, index|
            puts "\nQuestion #{index + 1}: #{question_data[:question]}"
            question_data[:options].each_with_index { |option, option_index| puts "#{option_index + 1}. #{option}" }
            print "Enter the number: "
            user_answer = gets.chomp.to_i

            if user_answer - 1 == question_data[:answer]
                puts "Correct!"
                @score += 1
            else
                puts "Incorrect. The correct answer was '#{question_data[:options][question_data[:answer]]}'."
            end
        end

        puts "\n#{@name} Quiz completed! Your score: #{@score}/#{@questions.length}"
    end
end
