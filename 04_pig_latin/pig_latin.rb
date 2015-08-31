def translate (text_in)
  vowels = ['a', 'i', 'e', 'o', 'u']
  punctuation = [',', '.', ':', ':']
  to_translate = text_in.split(" ")
  num_words = to_translate.length
  word_index = 1
  translated = ""
  index = 0
  capital = false
  punct = false
  to_translate.each do | word |
    #p "word = '#{word}'"
    #p "word[0] = #{word[0]}"
    case word[0].downcase
    when 'a', 'i', 'e', 'o', 'u'
      translated = translated + word + 'ay'
    else
      if (word[0] == word[0].upcase)
        capital = true
      end
      if (punctuation.includes?(word[word.length-1]))
        punct = true
      end
      
      word.each_char do |char|
        if (vowels.include?(char))
            if (char.downcase != 'u')
              translated = translated + word.slice(index, word.length - index) + word.slice(0, index) + "ay"
             break
            else
              translated = translated + word.slice(index+1, word.length - (index+1)) + word.slice(0,index+1) + "ay"
              break
            end
        end
        index += 1
      end
    end
    index = 0
    if (word_index != num_words)
      translated += ' '
    end
    word_index += 1
  end
  return translated
end