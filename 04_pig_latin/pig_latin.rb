def verify_vowel #may I split this method???
    @array_of_vowels = ["a", "e", "i", "o", "u", "y"]
    for i in 0..@array_of_letters.length - 1 do
        for j in 0..@array_of_letters[i].length - 1 do
            if @array_of_vowels.include?((@array_of_letters[i])[0]) == false # word does not start with vowel
                if (@array_of_letters[i])[0] == "q" # word starts with "q"
                    if (@array_of_letters[i])[1] == "u" # "q" followed by "u" counts together
                        @array_of_letters[i] = @array_of_letters[i].rotate(1)
                        @array_of_letters[i] = @array_of_letters[i].rotate(1)
                        break
                    elsif @array_of_vowels.include?((@array_of_letters[i])[j + 1]) == true
                        @array_of_letters[i] = @array_of_letters[i].rotate(1)
                        break
                    elsif @array_of_vowels.include?((@array_of_letters[i])[j + 1]) == false
                        @array_of_letters[i] = @array_of_letters[i].rotate(1)
                        @array_of_letters[i] = @array_of_letters[i].rotate(1)
                    end
                end
                if (@array_of_letters[i])[0] != "q" # word starts with constant different from 'q'
                    if @array_of_vowels.include?((@array_of_letters[i])[j + 1]) == true
                        @array_of_letters[i] = @array_of_letters[i].rotate(1)
                        break
                    elsif @array_of_vowels.include?((@array_of_letters[i])[j + 1]) == false
                        @array_of_letters[i] = @array_of_letters[i].rotate(1)
                        if (@array_of_letters[i])[j + 1] == "q" # word starts with "q"
                            if (@array_of_letters[i])[j + 1] == "u" # "q" followed by "u" counts together
                                @array_of_letters[i] = @array_of_letters[i].rotate(1)
                                @array_of_letters[i] = @array_of_letters[i].rotate(1)
                            elsif @array_of_vowels.include?((@array_of_letters[i])[j + 1]) == true
                                @array_of_letters[i] = @array_of_letters[i].rotate(1)
                            elsif @array_of_vowels.include?((@array_of_letters[i])[j + 1]) == false
                                @array_of_letters[i] = @array_of_letters[i].rotate(1)
                                @array_of_letters[i] = @array_of_letters[i].rotate(1)
                            end
                        end
                    end
                end
            end    
        end
    end
    return @array_of_letters
end

def translate(s)
    @array_of_words = []
    @array_of_words = s.downcase.split(" ")
    @array_of_letters = []
    @array_of_words.each do |word|
        @array_of_letters.push(word.split(//))
    end
    add_ay
    join_words_from_array
    #puts "#{join_words_from_array}"
    return @result
end

def add_ay
    @array_of_words_with_ay = []
    for n in 0..@array_of_letters.length - 1 do
        @array_of_words_with_ay[n] = (verify_vowel[n] + ["ay"]).join
    end
    return @array_of_words_with_ay
end

def join_words_from_array
    @result = ""
    @result = add_ay.join(" ")
end 

translate("apple")