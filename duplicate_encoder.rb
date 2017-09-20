def duplicate_encode(word)
  downcase_letters = word.downcase.split("")

  frequencies = downcase_letters.map do |letter|
    downcase_letters.count(letter)
  end

  frequencies.map {|frequency| frequency > 1 ? ")" : "(" }.join("")
end
