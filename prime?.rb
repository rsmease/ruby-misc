def prime?(num)
    (2..num/2).none? {|divisor| num % divisor === 0}
end

# puts prime?(6)

def my_take(enum, range=1)
    i = range;
    until range === 0 do
        new_enum = enum.delete_at(0)
        puts new_enum
        range -= 1
    end
end

# puts my_take([1,2,3])

def convert_temp(temp, input_scale:, output_scale: 'Celsius')
    case input_scale.downcase
    when 'fahrenheit'
        return output_scale == 'kelvin' ? 
        ((temp - 32) / 1.8) + 273.15 : (temp - 32) / 1.8
    when 'celsius'
        return output_scale == 'kelvin' ? 
        temp + 273.15 : (temp * 1.8) + 32
    when 'kelvin'
        return output_scale == 'celsius' ? 
        temp - 273.15 : (temp - 273.15) * 1.8
    end
end

puts convert_temp(0, input_scale: 'celsius', output_scale: 'celsius')