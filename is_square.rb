def is_square(x)
	return x > -1 && (Float(x)**0.5) % 1 === 0
end

puts is_square(4)