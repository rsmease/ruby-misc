def my_parse_int(string)
	if string.strip.chars.all? {|char| !"0123456789".index(char).nil?}
		return string.to_i
	else
		return "NaN"
	end
end

p my_parse_int("34.1")
