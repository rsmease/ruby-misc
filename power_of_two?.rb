def power_of_two?(x)
  remainder = x
  while (remainder > 1)
    remainder /= 2
    return true if remainder == 2
  end
  return false
end
