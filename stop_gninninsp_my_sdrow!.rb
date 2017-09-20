def spinWords(string)
  words = string.split(" ")
  reversed = words.map { |word| word.size >= 5 ? word.reverse : word }
  return reversed.join(" ")
end
