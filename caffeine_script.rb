def caffeineBuzz(n)
	if n % 3 === 0 and n % 4 === 0
		return "CoffeeScript";
	elsif n % 3 === 0
		if n % 2 === 0
			return "JavaScript"
		else
			return "Java"
		end
	else
		return "mocha_missing!"
	end
end