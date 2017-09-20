# You will be given two inputs: a string of words and a letter.For each string, return the alphabetic character after every instance of letter(case insensitive).

# If there is a number, punctuation or underscore following the letter, it should not be returned.

# If letter = 'r':
# puts comes_after("are you really learning Ruby?") # => "eenu"
# puts comes_after("Katy Perry is on the radio!")   # => "rya"
# puts comes_after("Pirates say arrrrrrrrr.")       # => "arrrrrrrr"
# puts comes_after("r8 your friend")                # => "i"
# Return an empty string if there are no instances of letter in the given string.

#failed
def comes_after(str,letter)
  split = str.split("")
  correct_letters = split.each_with_index.select {|char,index| (split[index - 1] === letter || split[index - 1] === letter.upcase) && char =~ /[[:alpha:]]/}
  final = correct_letters.map {|item| item[0]}.join("")
  if final.first = "P"
  	final.delete_at(0)
  end
  return final
end


puts comes_after("are you really learning Ruby?", "r").inspect # => "eenu"
puts comes_after("Katy Perry is on the radio!", "r").inspect  # => "rya"
puts comes_after("Pirates say arrrrrrrrr.", "r").inspect       # => "arrrrrrrr"
puts comes_after("r8 your friend", "r")  