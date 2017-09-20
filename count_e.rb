def find_e(s)
  if s.nil?
    return nil
  elsif s.length === 0
    return ""
  else
    e_count = 0
    s.chars.each {|char| e_count += 1 if char.downcase === "e"}
    if e_count === 0
      return "There is no \"e\"."
    else
      return e_count.to_s
    end
  end
end
