def digital_root(num)
  sum = add_digits_of(num)
  while sum >= 10
    sum = add_digits_of(sum)
  end
  sum
end

def add_digits_of(num)
  num.to_s.split("").map { |digit| digit.to_i}.reduce(:+)
end
