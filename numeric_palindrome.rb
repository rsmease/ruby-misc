def palindrome(num)

  if !(num.is_a? Integer) || num < 0
    return "Not valid"
  end

  num_str = num.to_s
  median = num_str.length / 2
  if num_str.length.even?
    return num_str[0...median] === num_str[median...median*2].reverse
  else
    return num_str[0...median] === num_str[median+1..median*2].reverse
  end
end

p palindrome(1)
