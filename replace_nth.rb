# Write a method, that replaces every nth char oldValue with char newValue.

# Method:

# replace_nth (text, n, old_value, new_value)
# Example:

# n:         2
# oldValue: 'a'
# newValue: 'o'
# "Vader said: No, I am your father!" -> "Vader soid: No, I am your fother!"
#   1     2          3        4       -> 2nd and 4th occurence are replaced
# Your method has to be case sensitive!

# As you can see in the example: The first changed is the 2nd 'a'. So the start is always at the nth suitable char and not at the first!

# If n is 0 or negative or if it is larger than the count of the oldValue, return the original text without a change. 

# The text and the chars will never be null.

# Have fun coding it and please don't forget to vote and rank this kata! :-)

# I have created other katas. Have a look if you like coding and challenges.

def replace_nth(text, n, old_value, new_value)
	if n <= 0
		return text
	end

	get_instances = text.split("").each_with_index.select {|char, index| char === old_value}.each_with_index.select{|char_instance, index| (index + 1) % n === 0}.map {|entry| entry[0][1]}
	new_text = text.split("")
	
	for instance in 0...get_instances.length
		new_text[get_instances[instance]] = new_value
	end

	return new_text.join("")
end

p replace_nth("Vader said: No, I am your father!", 2, "a", "o")