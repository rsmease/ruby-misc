def histogram(results)
	histogram = ["6|", "5|", "4|", "3|", "2|", "1|"];
	results_reversed = results.reverse
	results_reversed.each_with_index do |occurence, index|
		new_row = ("#" * occurence)
		if occurence > 0
			new_row += " " + occurence.to_s
		end
		histogram[index] += new_row + "\n"
	end
	return histogram.join("")
end

p histogram([7,3,10,1,0,5])