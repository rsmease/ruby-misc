# The two oldest ages function/method needs to be completed. It should take an array of numbers as its argument and return the two highest numbers within the array. The returned value should be an array in the format [second oldest age, oldest age].

# The order of the numbers passed in could be any order. The following are some examples of what the method should return (shown in different languages but the logic will be the same between all three).

# two_oldest_ages([1, 3, 10, 0]) # should return [3, 10]

def two_oldest_ages(ages)
	sorted = ages.sort
	return [sorted[-2], sorted[-1]]
end

puts two_oldest_ages([1,3,10,0]).inspect

#I guess this also works!
#def two_oldest_ages(ages)
#   ages.sort.last(2)
# end