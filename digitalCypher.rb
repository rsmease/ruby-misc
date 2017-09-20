def encode(message, key)
	alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
	encoded = message.split("").map {|letter| alphabet.index(letter) + 1}
	modified_key = key.to_s.chars.map(&:to_i)

	for letter in 0..encoded.length - 1
		encoded[letter] += (modified_key[letter % modified_key.length])
	end
	return encoded
end

p encode("scout", 1939)