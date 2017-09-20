# Instructions
# Output
# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contains any char.

# Examples input/output:

# XO("ooxx") => true
# XO("xooxx") => false
# XO("ooxXm") => true
# XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
# XO("zzoo") => false

def XO(str)
  downcased = str.downcase
  populations = {"x"=>0, "o"=>0}
  downcased.split("").each do |char|
  	if (populations.key?(char))
  		populations[char] += 1 
  	end
  end
  puts populations
  return populations["x"] === populations["o"]
end

puts XO("ooxx") #=> true
# puts XO("xooxx") #=> false
# puts XO("ooxXm") #=> true
# puts XO("zpzpzpp") #=> true // when no 'x' and 'o' is present should return true
# puts XO("zzoo") #=> false
# 
# oh wow, this is great
# def XO(str)
#   str.downcase.count('x') == str.downcase.count('o')
# end
