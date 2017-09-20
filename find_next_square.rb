load "is_square.rb"

def is_square(x)
	return x > -1 && (Float(x)**0.5) % 1 === 0
end


def find_next_square(sq)
	if !is_square(sq)
		return -1
	else
  		test = sq + 1
	  	while true
	  		if is_square(test)
	  			return test
	  		end
			test += 1
		end
	end
end

puts find_next_square(121)