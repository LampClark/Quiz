class QuizData
    attr_accessor :name

    def initialize(name, questions)
        @name = name
        @questions = questions.shuffle
        @score = 0
    end

    def play
        puts "Welcome to the #{@name} Quiz!".light_cyan
        @questions.each_with_index do |question_data, index|
            puts "\nQuestion #{(index + 1).to_s.yellow}: #{question_data[:question].cyan}"
            question_data[:options].each_with_index { |option, option_index| puts "#{(option_index + 1).to_s.green}. #{(option).to_s.light_yellow}" }
            print "Enter the number: ".colorize(:light_yellow ).colorize( :background => :light_red)
            user_answer = gets.chomp.to_i

            if user_answer - 1 == question_data[:answer]
                puts "Correct!".light_green
                @score += 1
            else
                puts "Incorrect. The correct answer was '#{question_data[:options][question_data[:answer]]}'. Try the next question.".red
            end
        end

        puts "\n#{@name} Quiz completed! Your score: #{@score}/#{@questions.length}".light_green
    end
end
