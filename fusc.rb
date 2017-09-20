def fusc(n)
	if n === 1 or n === 0
		return n
	elsif n.even?
    	return fusc(n/2)
  	else
    	return fusc(n/2) + fusc(n/2 + 1)
  	end
end