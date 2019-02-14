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