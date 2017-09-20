def covfefe(tweet)
  check_words = tweet.split(" ")
  puts check_words.inspect
  trumped = check_words.map {|word| word === "coverage" ? "covfefe" : word }
  if check_words.find_index("coverage") === nil
  	return tweet + " covfefe"
  else
  	return trumped.join(" ")
  end
end

puts covfefe("double space ")