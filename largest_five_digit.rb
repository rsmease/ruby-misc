def solution(digits)
  largest = 0
  start = 0

  while start < digits.length - 5
    sample = digits[start...(start + 5)].to_i
    largest = sample if sample > largest
    start += 1
  end

  largest
end

p solution("1341415811814")
