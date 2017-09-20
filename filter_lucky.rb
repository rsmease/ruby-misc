def contains_seven?(n)
	return !n.to_s.split("").index("7").nil?
end

def filter_lucky(lst)
	return lst.select {|number| contains_seven?(number)}
end

