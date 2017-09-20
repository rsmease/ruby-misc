def climb(n)
	result = []
	current = n 
	while current >= 1
		result.push(current)
		if current.even?
			current /= 2
		else
			current -= 1
			if current > 1 
				current /= 2
			end
		end
	end
	return result.reverse
end

p climb(10)