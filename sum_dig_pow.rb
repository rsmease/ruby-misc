def sum_dig_pow(a, b)
  [*a..b].select { |num| apply_powers(digits(num)).reduce(:+) == num }
end

def digits(num)
  num.to_s.chars.map(&:to_i)
end

def apply_powers(array)
  array.map.with_index { |num, i| num**(i+1) }
end
