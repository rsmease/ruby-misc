def sum_from_string(str)
  numbers = str.split("").select {|entry| entry =~ /[[:digit:]]/}
  sum = numbers.inject(0) {|accumulator, digit| }
end
