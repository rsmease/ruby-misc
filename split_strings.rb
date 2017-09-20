def solution(str)
  chars = str.chars
  result = []

  while chars.size > 1
    first = chars.shift
    second = chars.shift
    result << [first, second].join("")
  end

  if str.size.odd?
    result << [chars[0], "_"].join("")
  end

  result
end
