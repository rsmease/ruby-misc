def encode(plaintext)
	alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
	new_text = [];
  	plaintext.downcase.split("").each do |char|
  		if alphabet.include? char
  			current_index = alphabet.index(char)
  			if current_index.even?
  				new_text.push("0")
			else
				new_text.push("1")
			end
		else
			new_text.push(char)
		end
	end
	return new_text.join("");
end

puts encode("Hello World!")