# Write a function f that returns Hello, world!. But there is one thing, you cannot use helowrd letters.

def f
	greeting_string = ["Gdkkn", "vnqkc"]
	new_string = []
	greeting_string.each do |word|
		currentword = word
		wordletters = currentword.split("").map {|char| char.ord}
		updatedword = wordletters.map {|letter| (letter + 1).chr}
		new_string.push(updatedword.join(""))
	end
	return new_string.join(", ") + "!"
end

puts f




