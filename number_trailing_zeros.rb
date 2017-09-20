def zeros(n)
  factorial_digits = factorial(n).to_s.chars.reverse
  trailing_zeros = 0
  factorial_digits.each do |digit|
    trailing_zeros += 1 if digit == "0"
    break if digit != "0"
  end
  trailing_zeros
end

def factorial(n)
  [*1..n].reduce(:*) || 1
end

p zeros(1000)
