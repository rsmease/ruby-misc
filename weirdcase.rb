def weirdcase(string)
  words = string.split(" ")
  weird_words = []

  words.each do |word|
    weird = word.chars.map.with_index do |char, i|
      i.even? ? char.upcase : char.downcase
    end
    weird_words << weird.join("")
  end

  weird_words.join(" ")
end

p weirdcase("weird string case")
