class Book
    attr_reader :title

    def title=(title)
      @title = titleize(title)
    end

    def titleize(title)
        little_words = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
        #puts "#{little_words}"
        capitalized_words = ""
        string_of_words = []
        string_of_words = title.split(" ")
        #puts "#{string_of_words}"
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
        puts "#{capitalized_words}"
        @capitalized_words = capitalized_words
        #return capitalized_words
    #return @capitalized_words.to_s 
    end

end

@book = Book.new
@book.title = "love in the time of cholera"

