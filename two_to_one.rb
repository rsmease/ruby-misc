def longest(a1, a2)
  return (a1.chars | a2.chars).sort.join("")
end

puts longest("aretheyhere", "yestheyarehere")