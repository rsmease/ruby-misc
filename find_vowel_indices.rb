def vowel_indices(word)
	return word.chars.each_with_index.select {|char, index| char =~ /[aeiouyAEIOUY]/}.map {|vowel_index_pair| vowel_index_pair[1] + 1}
end

p vowel_indices("bialy")