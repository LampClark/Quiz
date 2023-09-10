class QuizQuestion
    def initialize
        @quizzes = []
        @player_name = nil
    end

    def add_quiz(quiz)
        @quizzes << quiz
    end

    def set_player_name(name)
        @player_name = name
    end

    def start
        puts "Welcome to the Quiz Game!".magenta
        loop do
            list_quiz_topics
            print "Enter the number of your choice or 'q' to Quit: ".cyan
            choice = gets.chomp
            break if choice.downcase == 'q'

            choice = choice.to_i - 1
            if choice >= 0 && choice < @quizzes.length
                @quizzes[choice].play
            else
                puts "Invalid choice. Please select a valid quiz topic.".red
            end
        end
        puts "Thank you for playing the Quiz Game.".light_green
    end
end

def list_quiz_topics
    puts "choose a quiz topic to begin:".green
    @quizzes.each_with_index do |quiz, index|
        quiz_name = quiz.instance_variable_get(:@name.name).to_s.light_blue
        quiz_number = (index + 1).to_s.light_green
        puts "#{quiz_number}. #{quiz_name}"
    end
end
# puts "#{(index + 1).red}. #{quiz.instance_variable_get(:@name.name)}" }