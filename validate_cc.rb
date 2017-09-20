def validate(n)
  digits = get_digits(n)

  if digits.size.even?
    doubled = digits.map.with_index {|num, i| i.even? ? num * 2 : num }
  else
    doubled = digits.map.with_index {|num, i| i.odd? ? num * 2 : num }
  end
  p doubled
  doubled.map! {|num| num > 9 ? get_digits(num).reduce(:+) : num }
  p doubled

  doubled.reduce(:+) % 10 == 0
end

def get_digits(n)
  n.to_s.chars.map(&:to_i)
end

p validate()
