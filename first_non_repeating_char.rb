def first_non_repeating_letter(s)

  #get unique character
  return s if s.empty?
  down_chars = s.downcase.chars
  unique = down_chars.detect { |chr| down_chars.count(chr) == 1 }
  return "" if unique.nil?

  #capitalized challenge
  compare_index = [s.index(unique.upcase), s.index(unique.downcase)]
  compare_index.reject! { |entry| entry.nil? }
  s[compare_index.min]

end
p first_non_repeating_letter("sTreSS")
