def lost_sheep(friday,saturday,total)
	friday.push(0)
	saturday.push(0)
	return total - (friday.reduce(:+) + saturday.reduce(:+))
end