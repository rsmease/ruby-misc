def getCount(inputStr)
	vowels = "aeiou".split("")
	vowel_count = 0
	inputStr.downcase.split("").each do |char|
		if vowels.include?(char)
			vowel_count += 1
		end
	end
	return vowel_count
end

#an alternative that I like
#def getCount(inputStr)
#  inputStr.downcase.count('aeiou')
# end

p getCount("pikachu")