def fizz_buzz_cuckoo_clock(time)

	hours = time.split(":")[0].to_i
	minutes = time.split(":")[1].to_i

	if minutes === 0 
		result = []
		if hours === 0 or hours === 12 
			for hour in 0...12
				result.push("Cuckoo")
			end
		else
			for hour in 0...(hours % 12)
				result.push("Cuckoo")
			end
		end
		return result.join(" ")
	elsif minutes === 30 
		return "Cuckoo" 
	elsif minutes % 3 === 0 and minutes % 5 === 0
		return "Fizz Buzz"
	elsif minutes % 5 === 0
		return "Buzz"
	elsif minutes % 3 === 0
		return "Fizz"
	else 
		return "tick"
	end

end

p fizz_buzz_cuckoo_clock("12:00")
