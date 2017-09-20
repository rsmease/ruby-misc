def mxdiflg(a1, a2)
	if a1.length === 0 or a2.length === 0
    	return -1
  	end
  	
	a1_max = a1.map {|string| string.length}.max
	a1_min = a1.map {|string| string.length}.min
	a2_max = a2.map {|string| string.length}.max
	a2_min = a2.map {|string| string.length}.min

	variance_1 = (a1_max - a2_min).abs
	variance_2 = (a2_max - a1_min).abs
	return [variance_1, variance_2].max
end