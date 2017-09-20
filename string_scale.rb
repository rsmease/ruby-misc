def scale(str, k, v)
  lines = str.split("\n")
  result = []
  lines.each do |line|
    new_line = ""
    line.each_char {|char| new_line += char*k}
    for add in 0...v
      result << new_line
    end
  end
  return result.join("\n")
end

p scale("abcd\nefgh\nijkl\nmnop", 2, 3)
