def multiples(m, n)
	multiple_arr = []
	for number in (1..m)
		multiple_arr.push(n*number)
	end
	return multiple_arr
end

#alternate
#def multiples(m, n)
#   (1..m).map{ |i| n * i }
# end