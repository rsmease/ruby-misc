#reverse a and b so that b is considered default short string
def shorter_reverse_longer(a,b)
  by_length = [b, a].sort_by(&:size)
  [by_length[0], by_length[1].reverse, by_length[0]].join("")
end
