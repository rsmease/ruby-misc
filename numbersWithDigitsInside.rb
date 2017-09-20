def numbers_with_digit_inside(x, d)
	my_range = [*1..x]
	has_digit = my_range.select {|number| number.to_s.include? d.to_s}

	if has_digit.length === 0
		return [0, 0, 0]
	end

	has_digit_sum = has_digit.inject(0) {|number, sum| sum += number}
	has_digit_product = has_digit.inject(1) {|number, sum| sum *= number}
	return [has_digit.length, has_digit_sum, has_digit_product]
end

p numbers_with_digit_inside(5, 6)