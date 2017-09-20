# We want to generate a function that computes the series starting from 0 and ending until the given number following the sequence:

# 0 1 3 6 10 15 21 28 36 45 55 ....

# which is created by

# 0, 0+1, 0+1+2, 0+1+2+3, 0+1+2+3+4, 0+1+2+3+4+5, 0+1+2+3+4+5+6, 0+1+2+3+4+5+6+7 etc..

# Input:

# LastNumber

# Output:

# series and result

# Example:

# Input:

# > 6
# Output:

# 0+1+2+3+4+5+6 = 21
# Input:

# > -15
# Output:

# -15<0
# Input:

# > 0
# Output:

# 0=0

class SequenceSum
	def self.show_sequence(n)
		if (n > 0)
			my_range = [*0..n]
			my_sum = my_range.inject(0) {|sum, x| sum + x}
			return my_range.join("+") + " = " + my_sum.to_s
		elsif (n === 0) 
			return "0=0"
		else
			return n.to_s + "<" + "0"
		end
	end
end