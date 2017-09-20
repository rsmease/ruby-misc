def collatz n
	conjecture = 1
	my_collatz = n 
	while my_collatz != 1 
		conjecture += 1
		if my_collatz.even?
			my_collatz /= 2 
		else
			my_collatz = (my_collatz * 3 + 1)
		end
	end
	return conjecture
end