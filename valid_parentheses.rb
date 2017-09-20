def valid_parentheses(string)
  parentheses = string.chars.select { |char| [")", "("].include?(char) }
  parentheses_check = {"(" => 0, ")" => 0}
  parentheses.each do |char|
    parentheses_check[char] += 1
    return false if parentheses_check[")"] > parentheses_check["("]
  end
  parentheses_check[")"] == parentheses_check["("]
end

p valid_parentheses("())))))((((()))))")
