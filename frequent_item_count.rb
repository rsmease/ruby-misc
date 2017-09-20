def most_frequent_item_count(collection)
	if collection.length < 1 
		return 0
	end
	counts = {}
	collection.each {|item| counts.has_key?(item) ? counts[item] += 1 : counts[item] = 1}
	return counts.max_by {|key, value| value}[1]
end

p most_frequent_item_count([3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3])
