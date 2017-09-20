# Your code here
def serial_average(str)
    first_sub = str[0,4];
    first_num = Float(str[4,5])
    second_num = Float(str[10,5])
    second_sub = '%.2f' % [(first_num + second_num) / 2]
    return String(first_sub) + String(second_sub)
end

# puts serial_average("422-22.00-51.00")

def mask_article(str, arr)
    arr.map {|word| strike(word) if word === str}
end
    
def strike(word)
    return "<strike>"+word+"</strike>"
end

puts mask_article("ballast", ["we", "are", "at", "the", "ballast"])