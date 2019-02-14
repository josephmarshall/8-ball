require 'colorize'

class Answers

    attr_accessor :responses

    def initialize
        @responses = ["yes",
                    "no",
                    "maybe",
                    "don't count on it",
                    "ask again later",
                    "nothing is for sure",
                    "most likely",
                    "very doubtful",
                    "somewhat likely",
                    "45% of the time it happens everytime",
                    "you wish",
                    "highly unlikely",
                    "certainly",
                    "most probably",
                    "there's a chance"
                    ]
    end

    def addResponse(responses)
        response = gets.strip
        if responses.include? response
         puts "I already know that answer"
        else
        return response
        end
    end

    def resetResponses
        return Answers.new
    end

    def printAnswers(responses)
        responses.each { |response| puts response }
    end

end

class Magic8ball

    def self.userInput
        input = gets.strip
        case input
            when "add_answer", "add", "a"
            # easter egg "add_answers"
                response = @answers.addResponse(@answers.responses)
                if response != nil
                @answers.responses << response
                end
            when "reset_answers", "reset", "r"
                # easter egg "reset_answers"
                @answers = @answers.resetResponses
            when "print_answers", "print", "p"
                # easter egg "print_answers"
                @answers.printAnswers(@answers.responses)
            when "q", "QUIT", "quit", "exit"
                puts "ask again any time!"
                exit
            when 42
                puts "What is the answer to the ultimate 
                question of life, the universe, and everything?"
            else
            
            answer
        end
        main
    end

    def self.answer
        print "Thinking"
        for t in 1..8
            print "."
            sleep(0.25)
        end
        sleep(0.5)
        print " "
        puts @answers.responses.sample
        sleep(2)
        puts
    end

    def self.quitProgram

    end

    def self.addAnswer
    # check for same answer
    end

    @answers = Answers.new

    def self.main
        puts "Welcome to the magic 8 ball".colorize(:cyan)
        puts "Type a question to get an answer or q to exit".colorize(:cyan)
        print "> ".colorize(:cyan)
        userInput
    end
    main
end

Magic8ball