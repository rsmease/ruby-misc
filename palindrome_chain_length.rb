def palindrome_chain_length(n)
  operation_count = 0
  current = n
  until palindrome?(current)
    operation_count += 1
    current += reverse_num(current)
  end
  operation_count
end

def reverse_num(n)
  n.to_s.reverse.to_i
end

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

p palindrome_chain_length(8713)
