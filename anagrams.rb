def anagrams(word, words)

  word_freq = Hash.new(0)
  word.chars.each {|char| word_freq[char] += 1 }

  anagrams = []

  words.each do |check_word|

    check_word_freq = Hash.new(0)
    check_word.chars.each {|char| check_word_freq[char] += 1 }

    word_freq.each_key { |k| check_word_freq[k] -= word_freq[k] }

    anagrams << check_word if check_word_freq.all? {|_k, v| v == 0 }

  end

  anagrams.sort
end

p anagrams("racer", ['crazer', 'carer', 'racar', 'caers', 'racer'])
