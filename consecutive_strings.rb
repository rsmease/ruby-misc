#failed
def longest_consec(strarr, k)
  string_lengths = strarr.map { |string| string.size }
  sub_array_lengths = get_lengths(string_lengths, k)
  max_combination = sub_array_lengths.max

  max_length_substring = ""
  sub_array_lengths.each_with_index do |length, idx|
    if length == max_combination
      max_length_substring = strarr[idx...(idx + k)].join("")
      break
    end
  end

  max_length_substring

end

def get_lengths(length_array, sublength)
  total_lengths = []
  for idx in 0...(length_array.length - sublength)
    total_length = length_array[idx...(idx+sublength)].inject(:+)
    total_lengths.push(total_length)
  end
  total_lengths
end
