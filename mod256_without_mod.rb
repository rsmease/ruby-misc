def mod256_without_mod(number)
	while number >= 256 or number <= -256
		if number < 0 
			number += 256 
		else 
			number -= 256 
		end
	end
	return number
end