def order_weight(string)
  num_arr = string.split(" ")
  sorted = num_arr.sort_by { |curr| [digit_sum(curr.to_i), curr] }
  sorted.join(" ")
end

def digit_sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

# p digit_sum(103)


p order_weight("103 123 4444 99 2000")
