def echo(output)
  return output
end

def shout(output)
    return output.upcase
end

def repeat(output, times=2)
  result = output
  loop_array = (2..times).to_a
  loop_array.each do |i|
    result = result + " " + output
  end
  return result
end

def start_of_word(text, num_chars)
    return text.slice(0, num_chars)
end

def first_word(sentence)
  return sentence.split[0]
end

def titleize(text)
  index = 0
  no_cap = ["and", "or", "the", "over", "to", "a", "but"]
  words = text.split
  output = []
  words.each do |word|
    if (no_cap.include?(word) && index > 0)
      output << word
    else
      output << word.capitalize
    end
    index += 1
    if index < words.length
      output << " "
    end
    
    
  end
  return output.join
end