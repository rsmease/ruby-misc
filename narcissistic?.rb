def narcissistic?(num)
  mag = digits(num).length
  num == digits(num).map { |digit| digit**(mag) }.reduce(:+)
end

def digits(num)
  num.to_s.chars.map(&:to_i)
end

p narcissistic?(155)
