# It's Friday the 13th, and Jason is ready for his first killing spree!

# Create a function, killcount, that accepts two arguments: an array of array pairs (the conselor's name and intelligence - ["Chad", 2]) and an integer representing Jason's intellegence.

# Ruby, Python, Crystal:

counselors1 = [["Chad", 2], ["Tommy", 9]]
jason1 = 7
# JavaScript:

# var counselors = [["Chad", 2], ["Tommy", 9]];
# var jason = 7;
# PHP:

# $counselors = [["Chad", 2], ["Tommy", 9]];
# $jason = 7;
# Your function must return an array of the names of all the counselors who can be outsmarted and killed by Jason.

def killcount(counselors, jason)
	killed = counselors.select {|counselor| counselor[1] < jason}
	return killed.map {|counselor| counselor[0]}
end

#oh yeah, I could have chained them
# def killcount(counselors, jason)
#   counselors.select{|x| x[1] < jason}.map{|x| x[0]}
# end

puts killcount(counselors1, jason1).inspect