def high_and_low(numbers)
  #your code here
  high_low = []
  sorted = numbers.split(" ").map{|num| num.to_i}.sort
  high_low.push(sorted[-1]).push(sorted[0])
  return high_low.join(" ")
end

puts high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")