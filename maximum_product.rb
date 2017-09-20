class Array
  def same_values?
    self.uniq.length == 1
  end
end

def maximum_product(arr)

	if arr.same_values? and arr[0] === 0
		return 0
	end

	prod_arr_sum = arr.reduce(1, :*)
	# puts prod_arr_sum

	maximum_product = prod_arr_sum / arr.detect {|member| member != 0}
	maximum_product_agent = arr.detect {|member| member != 0}

	for my_index in (0..arr.length-1)
		if (arr[my_index] === 0)
			without_zero = Array.new(arr)
			get_zero = without_zero.delete_at(my_index)
			test_product = without_zero.reduce(1, :*)
		else
			test_product = prod_arr_sum / arr[my_index]
		# puts test_product
		end

		puts maximum_product
		
		if test_product >= maximum_product
			if test_product > maximum_product
				maximum_product = test_product
				maximum_product_agent = arr[my_index]
			elsif test_product === maximum_product
				if arr[my_index] < maximum_product_agent
					maximum_product_agent = arr[my_index]
				end
			end
		end
	end

	return maximum_product_agent

end

puts maximum_product([0,0,0])