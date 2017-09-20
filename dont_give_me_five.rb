def dont_give_me_five(start_,end_)
	count = 0
    for num in (start_...end_ + 1)
    	if num.to_s.split("").find_index("5") === nil
    		count += 1
    	end
    end
    return count
end