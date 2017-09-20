def triple_double(num1, num2)
  triples = get_triples(num1)
  doubles = get_doubles(num2)

  (triples & doubles).empty? ? 0 : 1
end

def get_triples(num)
  digits = num.to_s.chars.map(&:to_i)
  triples = []
  digits.each_index do |i|
    if digits[i] == digits[i + 1] && digits[i] == digits[i + 2]
      triples << digits[i]
    end
  end
  triples.uniq
end

def get_doubles(num)
  digits = num.to_s.chars.map(&:to_i)
  doubles = []
  digits.each_index do |i|
    if digits[i] == digits[i + 1]
      doubles << digits[i]
    end
  end
  doubles.uniq
end

p triple_double(451999277, 41177722899)
