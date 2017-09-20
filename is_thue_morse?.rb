# Given a sequence of 0s and 1s, determine if it is a prefix of Thue-Morse sequence.

# The infinite Thue-Morse sequence is obtained by first taking a sequence containing a single 0 and then repeatedly concatenating the current sequence with its binary complement.

# A binary complement of a sequence X is a sequence Y of the same length such that the sum of elements X_i and Y_i on the same positions is equal to 1 for each i.

# Thus the first few iterations to obtain Thue-Morse sequence are:

# 0
# 0 1
# 0 1 1 0
# 0 1 1 0 1 0 0 1
# ...
# Examples

# For seq=[0, 1, 1, 0, 1], the result should be true.

# For seq=[0, 1, 0, 0], the result should be false.

# Inputs & Output

# [input] integer array seq

# An non-empty array.

# Constraints:

# 1 <= seq.length <= 1000

# seq[i] ∈ [0,1]
# [output] a boolean value

# true if it is a prefix of Thue-Morse sequence. false otherwise.

# describe "Basic Tests" do
#   it "It should works for basic tests." do
# Test.assert_equals(is_thue_morse([0, 1, 1, 0, 1]),true)
# Test.assert_equals(is_thue_morse([0]),true)
# Test.assert_equals(is_thue_morse([1]),false)
# Test.assert_equals(is_thue_morse([0, 1, 0, 0]),false)
#   end
# end

def is_thue_morse(seq)
    new_thue_morse = build_thue_morse
    if seq === new_thue_morse[0..seq.length-1]
    	return true
    else
    	return false
    end
end

def build_thue_morse
	base = [0, 1]
	while base.length < 1000
		new_base = base.map{|num| 1 - num}
		base += new_base
	end
	return base
end

puts is_thue_morse([0,1,1,0])
