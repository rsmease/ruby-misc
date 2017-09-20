# The GADERYPOLUKI is a simple substitution cypher used in scouting to encrypt messages. The encryption is based on short, easy to remember key. The key is written as paired letters, which are in the cipher simple replacement.

# The most frequently used key is "GA-DE-RY-PO-LU-KI".

#  G => A
#  g => a
#  a => g
#  A => G
#  D => E
#   etc.
# The letters, which are not on the list of substitutes, stays in the encrypted text without changes.

# Task

# Your task is to help scouts to encrypt and decrypt thier messages. Write the Encode and Decode functions.

# Input/Output

# The input string consists of lowercase and uperrcase characters and white . The substitution has to be case-sensitive.

# Example

#  encode("ABCD")          // => GBCE 
#  encode("Ala has a cat") // => Gug hgs g cgt 
#  encode("gaderypoluki"); // => agedyropulik
#  decode("Gug hgs g cgt") // => Ala has a cat 
#  decode("agedyropulik")  // => gaderypoluki
#  decode("GBCE")          // => ABCD
#  

def encode(str)
	swap_raw = "GA-DE-RY-PO-LU-KI".reverse.split("-") + "GA-DE-RY-PO-LU-KI".downcase.reverse.split("-") + "GA-DE-RY-PO-LU-KI".split("-") + "GA-DE-RY-PO-LU-KI".downcase.split("-")
	encoder = Hash.new
	swap_raw.each { |pair| encoder[pair[0]] = pair[1] }
	encoded_string = ""
	puts encoder
	for char in str.split("")
		if encoder.key?(char) #correct?
			encoded_string += encoder[char]
		else
			encoded_string += char
		end
	end
	return encoded_string
end

def decode(str)
  swap_raw = "GA-DE-RY-PO-LU-KI".reverse.split("-") + "GA-DE-RY-PO-LU-KI".downcase.reverse.split("-") + "GA-DE-RY-PO-LU-KI".split("-") + "GA-DE-RY-PO-LU-KI".downcase.split("-")
  	decoder = Hash.new 
	swap_raw.each { |pair| decoder[pair[0]] = pair[1] }
	puts decoder
	decoded_string = ""
	for char in str.split("")
		if decoder.key?(char) #correct?
			decoded_string += decoder[char]
		else
			decoded_string += char
		end
	end
	return decoded_string
end
#cool alternative
# def encode(str)
#   str.tr('gaderypolukiGADERYPOLUKI', 'agedyropulikAGEDYROPULIK')
# end
# alias decode encode

puts decode("agedyropulik")