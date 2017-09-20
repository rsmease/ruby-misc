def contain_all_rots(strng, arr)
	all_rotations = true
	if strng === ""
		return all_rotations
	else
		for index in 0...strng.length 
			rotation = strng[index+1...strng.length] + strng[0..index]
			if arr.index(rotation).nil?
				all_rotations = false 
				break
			end
		end
	end
	return all_rotations
end

contain_all_rots("TEST", [])