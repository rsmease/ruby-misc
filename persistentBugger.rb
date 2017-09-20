def persistence(number)
  remainder = number
  operation_count = 0
  while remainder >= 10
    operation_count += 1
    remainder = multiply_digits(remainder)
  end
  return operation_count
end

def multiply_digits(number)
  number.to_s.split("").map { |digit| digit.to_i }.reduce(:*)
end

p persistence(999)
