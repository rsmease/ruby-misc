def sum_of_n(n)
	sequence = []
	if n >= 0
		for index in 0..n
			sequence.push([*0..index].inject(0){|sum,x| sum + x })
		end
		return sequence
	else
		for index in n..0
			sequence.push([*index..0].inject(0){|sum,x| sum + x })
		end
		return sequence.reverse
	end
end

p sum_of_n(-5)