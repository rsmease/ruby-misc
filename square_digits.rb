def square_digits(num)
  return num.to_s.split("").map {|digit| digit.to_i*digit.to_i}.join("").to_i
end

p square_digits(9119)