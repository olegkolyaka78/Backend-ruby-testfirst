def echo(greeting)
    greeting.downcase
end

def shout(word)
    word.upcase
end

def repeat(double_word, number_of_times = nil)
    repeats = ""
    if number_of_times != nil && number_of_times != 0
        i = 0
        while i < number_of_times - 1 do
            repeats += double_word.downcase + " "
            i += 1
        end
        repeats += double_word.downcase
    end
    if number_of_times == nil
        repeats = double_word.downcase + " " + double_word.downcase
    end
    repeats = repeats.to_s
end

def start_of_word(word, number_of_first_letters)
    word[0..number_of_first_letters - 1]
end

def first_word(string_of_words)
    string_of_words.split.first
end

def titleize(untitleized_string)
    little_words = ["and", "or", "the", "over", "to", "the", "a", "but"]
    capitalized_words = ""
    string_of_words = []
    string_of_words = untitleized_string.split(" ")
    string_of_words.each do |word|
    word = word.downcase
    end
    string_of_words.each do |word|
        if string_of_words.length == 1 || 
            (word == string_of_words[string_of_words.length - 1] && little_words.include?(word) == false)
            word = word.capitalize
            capitalized_words += word.capitalize 
            
        elsif little_words.include?(word)
            capitalized_words += word.downcase + " "

        elsif little_words.include?(word) == false && string_of_words.length != 1 &&
            word != string_of_words[string_of_words.length - 1]
            word = word.capitalize
            capitalized_words += word + " "
        else word = word.capitalize
            capitalized_words += word + " "
        end
    end
    capitalized_words[0] = capitalized_words[0].capitalize
    return capitalized_words
end