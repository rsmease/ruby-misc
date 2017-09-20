def make_parts(arr, chunk_size)

	if (arr.length <= chunk_size)
		if arr.length === 0
			return arr
		else
			return [arr]
		end
	end

	num_parts = (arr.length / chunk_size).floor
	result = []

	for part in 0...num_parts
		result.push(arr[(part*chunk_size)...((part*chunk_size) + chunk_size)])
	end

	if arr.length % (num_parts * chunk_size) > 0
		result.push(arr[(chunk_size*num_parts)...arr.length])
	end

	return result

end