"a" - 6 "b" - 1 "d" - 7 "e" - 4 "i" - 3 "l" - 2 "m" - 9 "n" - 8 "o" - 0 "t" - 5

def hidden(num)
  decode = {"6"=>"a", "1"=>"b", "7"=>"d", "4"=>"e", "3"=>"i", "2"=>"l", "9"=>"m", "8"=>"n", "0"=>"o", "5"=>"t"}
  return num.to_s.split("").map{|digit| decode[digit]}.join("")
end