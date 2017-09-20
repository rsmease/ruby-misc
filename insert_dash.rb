def insert_dash(num)
  digits = num.to_s.split("").map {|digit| digit.to_i}

  result = []
  digits.each_with_index do |digit, index|
  	if digits[index].odd? and index != digits.length - 1 and digits[index + 1].odd?
  		result.push(digit)
  		result.push("-")
  	else
  		result.push(digit)
  	end
  end
  return result.join("")
end