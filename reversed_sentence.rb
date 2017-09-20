def solution(sentence)
  words = sentence.split(" ")
  reversed = []
  for word in 0...words.length
    reversed.unshift(words[word])
  end
  reversed.join(" ")
end
