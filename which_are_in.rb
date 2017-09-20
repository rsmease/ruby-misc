def in_array(array1, array2)
  substrings_present = []
  array1.each do |substring|
    array2.each do |string|
      if string.include?(substring)
        substrings_present.push(substring)
      end
    end
  end
  substrings_present.uniq.sort
end
