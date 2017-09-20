def scramble(s1,s2)
  s1_counts = Hash.new(0)
  s1.chars.each {|char| s1_counts[char] += 1 }

  s2_counts = Hash.new(0)
  s2.chars.each {|char| s2_counts[char] += 1 }

  s2_counts.each_key { |k| s1_counts[k] -= s2_counts[k] }
  s1_counts.all? { |_k, v| v >= 0 }

end
