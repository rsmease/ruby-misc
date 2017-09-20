def battle(x, y)
  x_cap = x.chars.select {|char| char === char.upcase}
  y_cap = y.chars.select {|char| char === char.upcase}

  x_sum = x_cap.map {|char| char.ord - ("A".ord - 1)}.reduce(:+)
  y_sum = y_cap.map {|char| char.ord - ("A".ord - 1)}.reduce(:+)

  if x_sum > y_sum
    return x
  elsif y_sum > x_sum
    return y
  else
    return "Tie!"
  end
end

p battle("ONE", "TWO")
