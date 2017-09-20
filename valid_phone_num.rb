def validPhoneNumber(phoneNumber)
  num = phoneNumber.chars
  return false unless phoneNumber.size != 13
  return false unless "#{num[0], num[4], num[5], num[9]}" == "() -"
  return false unless num[1..3].join("") =~ /[[:digit:]]/
  return false unless num[6..8].join("") =~ /[[:digit:]]/
  true
end

p validPhoneNumber("(123) 421-2134")
