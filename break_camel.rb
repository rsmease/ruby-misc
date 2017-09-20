def solution(string)
  words = []
  current_word = string[0]
  for i in 1...string.length - 1
    curr = string[i]
    nxt = string[i+1]
    current_word += curr
    if caps?(nxt)
      words.push(current_word)
      current_word = ""
    end
  end

  if caps?(string.chars.last)
    words.push(current_word)
    words.push(string.chars.last)
  else
    current_word += string.chars.last
    words.push(current_word)
  end

  words.join(" ")

end

def caps?(char)
  return char.upcase == char
end

p solution("RyanMease")
