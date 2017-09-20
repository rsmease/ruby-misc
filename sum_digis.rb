def sumDigits(number)
	return number.to_i.abs.to_s.chars.inject(0) {|sum, x| sum += x.to_i}
end

# more clever
# def sumDigits(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end

p sumDigits("2303")