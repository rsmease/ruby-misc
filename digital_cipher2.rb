def decode(code, key)
	decoder = key.to_s.split("").map {|digit| digit.to_i}
	decoded = []
	code.each_with_index {|num, index| decoded.push(num + 96 - decoder[index % decoder.length])}
	return decoded.map {|num| num.chr}.join("")
end

puts decode([20, 12, 18, 30, 21], 1939)