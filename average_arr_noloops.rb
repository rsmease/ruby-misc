def average(array)
	raw_average = array.inject(0) {|sum, x| sum += x} / array.length.to_f
	return raw_average - raw_average.floor >= 0.5 ? raw_average.ceil : raw_average.floor
end

#fdiv will force to float; round is what I want with respect to the floor or ceil? question
# def average(scores)
#   scores.reduce(:+).fdiv(scores.count).round
# end

p average([5, 78, 52, 900, 1])