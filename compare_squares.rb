def comp(array1, array2)

	if (array1 === [])
		if (array2 === [])
			return true
		else
			return false
		end
	end

	sorted1 = array1.sort
	sorted2 = array2.sort

	for index in (0..sorted1.length - 1)
		base = sorted1[index]
		square = sorted2[index]
		if square != (base*base)
			return false
		end
	end
	return true
end

arr1 = [121, 144, 19, 161, 19, 144, 19, 11] 
arr2 = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
p comp(arr1, arr2)


# an alternate that I like
# note that you can directly compare two arrays, as long as all of the indices are identical
# def comp(array1, array2)
#   array1.nil? || array2.nil? ? false : array1.sort.map {|v| v ** 2} == array2.sort
# end