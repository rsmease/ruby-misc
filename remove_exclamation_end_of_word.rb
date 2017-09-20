def remove(s)
  original = s;
  expected = s.split(" ").map{ |word| word[word.length - 1] === "!" ? word[0...(word.length - 1)] : word}.join(" ")
  while expected != original
    expected = expected.split(" ").map{ |word| word[word.length - 1] === "!" ? word[0...(word.length - 1)] : word}.join(" ")
end
