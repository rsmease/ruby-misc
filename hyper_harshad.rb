def harshad?(n)
	return n % (n.to_s.split("").map{|digit| digit.to_i}.reduce(:+)) === 0
end

def number_joy(n)
    digit_sum = n.to_s.split("").map{|digit| digit.to_i}.reduce(:+)
    return harshad?(n) && (digit_sum * digit_sum.to_s.split("").reverse.join.to_i === n )
end

p number_joy(1729)