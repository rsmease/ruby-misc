def whoIsNext(names, r)
  currently_served = 0
  while names.size < r
    names.push(names[currently_served])
    names.push(names[currently_served])
    currently_served += 1
  end
  names[r-1]
end

test_names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]
test_r = 6

p whoIsNext(test_names, test_r)
