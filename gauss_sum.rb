def f(n)
	if n.is_a? Integer and n > 0
		sum = 0
		for num in 0..n
			sum += num
		end
		return sum
	else
		return false
	end
end

puts f(213431)