require 'colorize'
require_relative 'answers'
require_relative 'letters'
class String
    def letters(on, delay)
        if on
        delay = delay
        else
        delay = 0
        end
            letters = self.split("")
            letters.each do |l| print l
            sleep(delay)
            end
    end
end

class Magic8ball

    def self.userInput
        input = gets.strip
        case input
            when "toggle mode", "mode", "t"
                @lettersMode = !@lettersMode
            when "add_answer", "add", "a"
            # easter egg "add_answers"
                response = @answers.addResponse(@answers.responses)
                if response != nil
                @answers.responses << response
                puts "#{response} added"
                end
                pause
            when "reset_answers", "reset", "r"
                # easter egg "reset_answers"
                @answers = @answers.resetResponses
                pause
            when "print_answers", "print", "p"
                # easter egg "print_answers"
                @answers.printAnswers(@answers.responses)
                pause
            when "q", "QUIT", "quit", "exit"
                puts "ask again any time!"
                exit
            when "What is the answer to the ultimate question of life, the universe, and everything?"
                puts "42"
                pause
            when "42"
                puts "That is the answer to the ultimate question of life, the universe, and everything."
                pause
            else
            answer
        end
        main
    end

    def self.answer
        print "I'm Thinking"
        "........ ".letters(@lettersMode, 0.25)
        @answers.responses.sample.letters(@lettersMode, 0.04)
        sleep(2.5)
    end

    def self.pause
        puts "-----------------"
        puts "press enter"
        gets
    end

    def self.addAnswer
    # check for same answer
    end

    @answers = Answers.new

    def self.main
        system("clear")
        "Welcome to the magic 8 ball".colorize(:cyan).letters(@lettersMode, 0.04)
        print("\n")
        "Type a question to get an answer or q to exit".colorize(:cyan).letters(@lettersMode, 0.04)
        print("\n")
        print "> ".colorize(:cyan)
        userInput
    end
    main
end

Magic8ball