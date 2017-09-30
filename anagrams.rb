#refactored Sep 30 17
#identify anagrams of 'word' in array 'dict'
#anagram must have precisely the same letters, in any arrangement

def get_anagrams(word, dict)
  return nil if dict.empty?
  word_freq = char_freq(word)
  dict.select {|entry| anagrams?(word_freq, char_freq(entry))}.sort
end

#compare frequency of all keys (characters)
#if all character frequencies have variance of 0, words are anagrams
def anagrams?(word_hash, comparison_hash)
  word_hash.each_key { |k| comparison_hash[k] -= word_hash[k] }
  comparison_hash.all? {|_k, v| v == 0 }
end

def char_freq(str)
  freq = Hash.new(0)
  str.chars.each {|char| freq[char] += 1 }
  freq
end

p get_anagrams("racer", ['crazer', 'carer', 'racar', 'caers', 'racer'])
