def done_or_not(grid)
  if check_rows(grid) && check_cols(grid) && check_regions(grid)
    "Finished!"
  else
    "Try again!"
  end
end

def check_rows(grid)
  grid.all? { |row| check(row) }
end

def check_cols(grid)
  check_rows(grid.transpose)
end

def check_regions(grid)
  nw = grid[0][0..2].concat(grid[1][0..2]).concat(grid[2][0..2])
  w = grid[3][0..2].concat(grid[4][0..2]).concat(grid[5][0..2])
  sw = grid[6][0..2].concat(grid[7][0..2]).concat(grid[8][0..2])

  n = grid[0][3..5].concat(grid[1][3..5]).concat(grid[2][3..5])
  c = grid[3][3..5].concat(grid[4][3..5]).concat(grid[5][3..5])
  s = grid[6][3..5].concat(grid[7][3..5]).concat(grid[8][3..5])

  ne = grid[0][6..8].concat(grid[1][6..8]).concat(grid[2][6..8])
  e = grid[3][6..8].concat(grid[4][6..8]).concat(grid[5][6..8])
  se = grid[6][6..8].concat(grid[7][6..8]).concat(grid[8][6..8])

  [nw, w, sw, n, c, s, ne, e, se].all? { |region| check(region) }
end

def check(arr)
  arr.sort == [1, 2, 3, 4, 5, 6, 7, 8, 9]
end

test_1 = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
         [6, 7, 2, 1, 9, 5, 3, 4, 8],
         [1, 9, 8, 3, 4, 2, 5, 6, 7],
         [8, 5, 9, 7, 6, 1, 4, 2, 3],
         [4, 2, 6, 8, 5, 3, 7, 9, 1],
         [7, 1, 3, 9, 2, 4, 8, 5, 6],
         [9, 6, 1, 5, 3, 7, 2, 8, 4],
         [2, 8, 7, 4, 1, 9, 6, 3, 5],
         [3, 4, 5, 2, 8, 6, 1, 7, 9]]

p done_or_not(test_1)
