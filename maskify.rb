def maskify(cc)
	if (cc.length > 4)
		cc_masked = "#" * (cc.length - 4)
		cc_masked += cc.split("").last(4).join("")
		return cc_masked
	end
	return cc
end

puts maskify("34")