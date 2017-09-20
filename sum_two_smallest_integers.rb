def sum_two_smallest_numbers(numbers)
	sorted = numbers.sort
	return sorted[0] + sorted[1]
end

# an alternate that I like
# def sum_two_smallest_numbers(numbers)
#   numbers.sort.take(2).reduce(:+)
# end

arr1 = [19,5,42,2,77]
p sum_two_smallest_numbers(arr1)