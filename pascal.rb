def pascal(depth)
  return [[1]] if depth == 1;
  return [[1], [1, 1]] if depth == 2;
  pascal = [[1], [1,1]]
  while pascal.length < depth
    new_row = [1]
    while new_row.size < pascal[-1].size
      curr = new_row.length
      new_row << pascal[-1][curr-1] + pascal[-1][curr]
    end
    new_row << 1
    pascal << new_row
  end
  pascal
end

p pascal(5)
