def binary_array_to_number(arr)
	return arr.join("").to_i(2);
end 

puts binary_array_to_number([0,0,1,1])
