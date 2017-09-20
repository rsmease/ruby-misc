def reverse_letter(string)
	return string.gsub(/[^a-zA-Z]/, "").reverse 
end

p reverse_letter("te32413243st")