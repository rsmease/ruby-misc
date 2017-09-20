def evaporator(content, evap_per_day, threshold)
	days_passed = 0
	remaining_daily = (100 - evap_per_day.to_f)/100
	# p remaining_daily
	total = content.to_f
	while (total >= content*(threshold.to_f/100))
		days_passed += 1
		total = total*remaining_daily
		# p total
	end
	return days_passed
end

p evaporator(10,10,10)