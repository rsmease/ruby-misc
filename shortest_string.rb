def find_short(s)
    lengths = s.split(" ").map {|word| word.length}
    l = lengths.min
    return l # l: length of the shortest word
end

#clever
#def find_short(s)
#   s.split.map(&:size).min
# end

puts find_short("This is a test of the system.")