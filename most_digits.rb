# Find the number with the most digits.

# If two numbers in the argument array have the same number of digits, return the first one in the array.

# describe "Basic tests" do
#   Test.assert_equals(find_longest([1, 10, 100]), 100)
#   Test.assert_equals(find_longest([9000, 8, 800]), 9000)
#   Test.assert_equals(find_longest([8, 900, 500]), 900)
#   Test.assert_equals(find_longest([3, 40000, 100]), 40000)
#   Test.assert_equals(find_longest([1, 200, 100000]), 100000)
# end

def find_longest(arr)
  #your code here
  num_strings = arr.map {|num| num.to_s}
  lens = num_strings.map {|num_string| num_string.length}
  max_len = lens.max
  largest_num = num_strings.detect {|num| num.length === max_len}
  return largest_num.to_i
end

#Oh neat! There's a max_by thing for easier conversion. 
# def find_longest(arr)
#   arr.max_by { |num| num.to_s.size }
# end

puts find_longest([1, 10, 100])