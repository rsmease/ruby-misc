# def nb_dig(n, d)
# 	sum = 0
# 	for num in 0..n
# 		square = (num*num)#.to_s.split("")
# 		while square >= d
# 			if (square % 10) == d
# 				sum += 1
# 			end
# 			square /= 10
# 		end
# 	end
# 	return sum
# end

def nb_dig(n,d)
	sum = 0
	for num in 0..n
		square = (num**2).to_s.split("")
		for digit in square
			# puts digit.inspect
			if digit === d.to_s
				sum += 1
			end
		end
	end
	return sum
end


p nb_dig(12224, 8)

		# puts square
		# for digit in square
		# 	# puts digit.inspect
		# 	if digit === d.to_s
		# 		sum += 1
		# 	end
		# end