def series_sum(n)
	sum = 0
	for iteration in (0..n-1)
		denominator = 1 + 3*iteration
		sum += (1.0/denominator.to_f)
	end
	return '%.2f' % sum
end

p series_sum(5)