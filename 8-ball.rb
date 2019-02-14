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
                    "45% of the time it happens everytime"
                    ]
    end

    def addResponse(responses)
        response = gets.strip
        if responses.include? response
         #do nothing
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
            when "add_answer"
            # easter egg "add_answers"
            @answers.responses << @answers.addResponse(@answers.responses)
            when "reset_answers"
            # easter egg "reset_answers"
            @answers = @answers.resetResponses
            when "print_answers"
            # easter egg "print_answers"
            @answers.printAnswers(@answers.responses)
            when "q", "QUIT", "quit", "exit"
                puts "ask again any time!"
                exit
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