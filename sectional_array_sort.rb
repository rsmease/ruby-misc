# In this kata you are given an array to sort but you're expected to start sorting from a specific position of the array (in ascending order) and optionally you're given the number of items to sort.

# Examples:

# sect_sort([1, 2, 5, 7, 4, 6, 3, 9, 8], 2) //=> [1, 2, 3, 4, 5, 6, 7, 8, 9]
# sect_sort([9, 7, 4, 2, 5, 3, 1, 8, 6], 2, 5) //=> [9, 7, 1, 2, 3, 4, 5, 8, 6]
# Documentation:

# sect_sort($array, $start, $length);
# array - array to sort
# start - position to begin sorting
# length - number of items to sort (optional)
# if the length argument is not passed or is zero, you sort all items to the right of the start postiton in the array

# describe "Basic tests" do
# Test.assert_equals(sect_sort([1, 2, 5, 7, 4, 6, 3, 9, 8], 2), [1, 2, 3, 4, 5, 6, 7, 8, 9])
# Test.assert_equals(sect_sort([1, 2, 5, 7, 4, 6, 3, 9, 8], 8), [1, 2, 5, 7, 4, 6, 3, 9, 8])
# Test.assert_equals(sect_sort([9, 7, 4, 2, 5, 3, 1, 8, 6], 2, 5), [9, 7, 1, 2, 3, 4, 5, 8, 6])
# Test.assert_equals(sect_sort([1, 2, 5, 7, 4, 6, 3, 9, 8], 8, 3), [1, 2, 5, 7, 4, 6, 3, 9, 8])
# Test.assert_equals(sect_sort([], 0), [])
# end

def sect_sort(arr, start, length = 0)
	if (length === 0)
		length = arr.length - start
	end

	if (start === 0)
		if (start + length === arr.length)
			return arr.sort
		else
			sorted = arr[start..start+length - 1].sort
			unsorted_end = arr[start+length]
			return sorted + unsorted_end
		end
	else
		unsorted_start = arr[0..start - 1]
		sorted = arr[start..start+length - 1].sort
		if (start + length >= arr.length)
			return unsorted_start + sorted
		else
			unsorted_end = arr[start+length..arr.length-1]
			puts unsorted_start.inspect
			puts sorted.inspect
			return unsorted_start + sorted + unsorted_end
		end
	end

end

puts sect_sort([1, 2, 5, 7, 4, 6, 3, 9, 8], 8, 3).inspect