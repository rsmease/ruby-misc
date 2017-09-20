def validate_word(word)
  uncased = word.downcase
  sample = uncased.count(uncased[0])
  uncased.each_char do |char|
    if uncased.count(char) != sample
      return false
    end
  end
  return true
end
