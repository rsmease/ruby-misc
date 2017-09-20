def nbr_of_laps(x, y)
  first_meeting = x.lcm(y)
  [first_meeting / x, first_meeting / y]
end

p nbr_of_laps(3, 5)
