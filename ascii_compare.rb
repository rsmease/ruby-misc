def compare(s1,s2)

	my_s1 = s1
	my_s2 = s2

	if my_s1.nil? or my_s1 === ""
		my_s1 = "1"
	end

	if my_s2.nil? or my_s2 === ""
		my_s2 = "1"
	end

	if not my_s1.split("").all? {|char| char =~ /[[:alpha:]]/}
		my_s1 = ""
	else
		my_s1 = my_s1.split("").map {|char| char.upcase}
	end

	if not my_s2.split("").all? {|char| char =~ /[[:alpha:]]/}
		my_s2 = ""
		return my_s1 === my_s2
	else
		my_s2 = my_s2.split("").map {|char| char.upcase}
	end

	ascii_1 = my_s1.map {|char| char.ord}.inject(0) {|sum, x| sum += x}
	ascii_2 = my_s2.map {|char| char.ord}.inject(0) {|sum, x| sum += x}
	return ascii_1 === ascii_2
end

p compare("A2","B2")