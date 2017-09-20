# When given a string of space separated words, return the word with the longest length. If there are multiple words with the longest length, return the last instance of the word with the longest length.

# Example:

# 'red white blue' //returns string value of white

# 'red blue gold' //returns gold

# describe "Basic Tests" do
#   it "should pass basic tests" do
#     Test.assert_equals(longest_word('a b c d each') , "each" )
#     Test.assert_equals(longest_word('each step') , "step" )
#     Test.assert_equals(longest_word('forward each step going') , "forward" )
#     Test.assert_equals(longest_word('brings each step going') , "brings" )
#     Test.assert_equals(longest_word('brings each opportunity step going') , "opportunity" )
#   end
# end

def longest_word(string_of_words)
	as_arr = string_of_words.split(" ")
	lengths = as_arr.map {|string| string.length}
	max_length = lengths.max
  return as_arr.reverse.detect {|string| string.length === max_length}
end

#clever because it takes advantage of the 'last appearance' constraint
# def longest_word(string_of_words)
#   string_of_words.split.sort_by(&:size).last
# end

puts longest_word('a b c d each') # , "each" )
puts longest_word('each step') # , "step" )
puts longest_word('forward each step going') # , "forward" )
puts longest_word('brings each step going') # , "brings" )
puts longest_word('brings each opportunity step going') # , "opportunity" )