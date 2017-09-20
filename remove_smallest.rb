
def remove_smallest(numbers)
	smallest = numbers.min
	numbers.each_with_index do |number,index|
		if number === smallest
			removed = numbers.delete_at(index)
			return numbers
		end
	end
end

puts remove_smallest([1,2,3,4,5,0]).inspect