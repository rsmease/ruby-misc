def title_case(title, minor_words = "")

  #handle input variables
  if minor_words.empty?
    minor_words_downcase = []
  else
    minor_words_downcase = minor_words.split(" ").map(&:downcase)
  end
  return title if title.empty?

  #titlize title
  titled = title.split(" ").map(&:downcase).map do |word|
    minor_words_downcase.include?(word) ? word : word.capitalize
  end
  titled[0] = titled[0].capitalize
  titled.join(" ")
end

p title_case("the quick brown fox")
