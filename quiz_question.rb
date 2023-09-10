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
        puts "Welcome to the Quiz Game!"
        print "Enter your name: "
        player_name = gets.chomp
        set_player_name(player_name)
        loop do
            list_quiz_topics
            print "Enter the number of your choice or 'q' to Quit: "
            choice = gets.chomp
            break if choice.downcase == 'q'

            choice = choice.to_i - 1
            if choice >= 0 && choice < @quizzes.length
                @quizzes[choice].play
            else
                puts "Invalid choice. Please select a valid quiz topic."
            end
        end
        puts "Thank you for playing the Quiz Game."
    end
end

def list_quiz_topics
    puts "choose a quiz topic to begin:"
    @quizzes.each_with_index { |quiz, index| puts "#{index + 1}. #{quiz.instance_variable_get(:@name)}" }
end
