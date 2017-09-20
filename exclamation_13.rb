def product(s)
	search_result = {"?"=>0,"!"=>0}
	s.chars.each {|char| search_result[char] += 1 if search_result.has_key?(char)}
	return search_result["?"] * search_result["!"]
end

p product("!!!!")