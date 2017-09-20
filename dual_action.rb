def mean(lst)
	letters = lst.select {|entry| entry =~ /[[:alpha:]]/}.join("")
	numbers = lst.select {|entry| entry =~ /[[:digit:]]/}
	average = numbers.inject(0) {|sum, x| sum += x.to_i}.fdiv(numbers.length)
	return [average, letters]
end

lst1 = ["u", "6", "d", "1", "i", "w", "6", "s", "t", "4", "a", "6", "g", "1", "2", "w", "8", "o", "2", "0"]

p mean(lst1)