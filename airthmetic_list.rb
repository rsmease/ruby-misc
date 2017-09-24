#generate list of 'len' size, given 'first' and 'step'

def sequential_list(first,step,len)
  result = [first]
  while result.size < len
    result << result.last + step
  end
  result
end

p sequential_list(0, 2, 20)
