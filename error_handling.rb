# Error Handling is very important in coding and seems to be overlooked or not implemented properly.

# #Task

# Your task is to implement a function which takes a string as input and return an object containing the properties vowels and consonants. The vowels property must contain the total count of vowels {a,e,i,o,u}, and the total count of consonants {a,..,z} - {a,e,i,o,u}. Handle invalid input and don't forget to return valid ones.

# #Input

# The input is any random string. You must then discern what are vowels and what are consonants and sum for each category their total occurrences in an object. However you could also receive inputs that are not strings. If this happens then you must return an object with a vowels and consonants total of 0 because the input was NOT a string. Refer to the Example section for a more visual representation of which inputs you could receive and the outputs expected. :)

# Example:

# Input: get_count('test')
# Output: {vowels=>1,consonants=>3}

# Input: get_count('tEst')
# Output: {vowels=>1,consonants=>3}

# Input get_count('    ')
# Output: {vowels=>0,consonants=>0}

# Input get_count()
# Output: {vowels=>0,consonants=>0}
# C#

# A Counter class has been put in the preloaded section taking two parameters Vowels and Consonants this must be the Object you return!

def get_count(string = nil)

	if ! string.is_a? String
		return {"vowels"=>0, "consonants"=>0}
	end

	result = {}
	clean_string = string.gsub(/\W+/, '').delete(" ")
	vowel_count = clean_string.chars.count {|letter| letter =~ /[aeiouAEIOU]/}
	result["vowels"] = vowel_count
	result["consonants"] = clean_string.length - vowel_count
	return result

end

p get_count("tEst")