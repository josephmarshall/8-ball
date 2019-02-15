class Answers

    attr_accessor :responses, :array

    def initialize(array)
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
        @array = array
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

a = Answers.new(testArray)
puts a.array
a.responses << a.addResponse(a.responses)
puts a.responses
puts 
puts a.test1(testArray2)

#some stuff
#some more stuff