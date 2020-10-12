class WordFrec
    def self.clean_special_characters(string = '')
        new_string = string.gsub!(/[^abcdefghijklmnopqrstuvwxyz ]/,'')
        if new_string
          return string
        else
          return new_string
        end
    end
  
    def self.words_from_string(string = '')
        self.clean_special_characters(string).split(' ')
    end
  
    def self.count_frequency(string = '', word_list = [])
      frec = []
      word_list.each do |word|
        temp = Hash[word, 0]
        self.words_from_string(string).each do |word_in_string|
          temp[word] += 1 if word == word_in_string
        end
        frec.append(temp)
      end
      return frec
    end
  
    def self.sort_by_frecuency(string = '', word_list = [])
      frecuency = self.count_frequency(string, word_list)
      frecuency.sort_by { |word| word.values[0] }
    end
  end
  
  d = WordFrec.sort_by_frecuency("a a b b c b", ["a","b","c", "asd"])
  p d