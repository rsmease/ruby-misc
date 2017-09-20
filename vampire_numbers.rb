def vampire_test(a,b)
	total = (a*b).to_s.split("")
	multiplicands = a.to_s.split("") + b.to_s.split("")
	puts total.inspect
	return total.sort === multiplicands.sort
end

p vampire_test(6, 21)