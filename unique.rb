def unique(integers)
  if integers.length === 0
    return integers
  else
    return integers.uniq
  end
end

p unique([5, 2, 1, 3]).inspect