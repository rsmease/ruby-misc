def pig_it(text)
  words = text.split(' ')
  words.map! do |word|
    unless word =~ /[[:punct:]]/
      word[1...word.size] + word[0] + "ay"
    end
  end
  words.join(' ')
end
