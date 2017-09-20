def find_deleted_number(arr, mixed_arr)
	if arr.sort.inspect == mixed_arr.sort.inspect
		return 0
	else
		arr.each {|number| return number if mixed_arr.index(number).nil?}
	end
end

p find_deleted_number([1,2,3,4,5], [3,4,1,5])