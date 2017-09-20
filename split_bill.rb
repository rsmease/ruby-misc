def split_the_bill(x)
	average = x.values.reduce(:+).fdiv(x.length)
	return x.each {|key, value| x[key] = (x[key] - average).round(1)}
end

group = {
    'A'=>20, 
    'B'=>15, 
    'C'=>10
}

p split_the_bill(group)