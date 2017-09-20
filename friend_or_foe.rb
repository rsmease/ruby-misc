def friend(friends)
	return friends.select {|name| name.length === 4}
end