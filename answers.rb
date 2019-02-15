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

#some stuff