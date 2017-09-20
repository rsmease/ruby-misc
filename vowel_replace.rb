def vowel_2_index(string)
  result = ""
  string.chars.each_with_index do |character, index| 
  	if character =~ /[aeoui]/ 
  		result += (index + 1).to_s
  	else
  		result += character
  	end
  end
  return result
end