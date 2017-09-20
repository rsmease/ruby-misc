def happy_g(s)
    buffered = "buffer" + s + "buffer"
    buffered.chars.each_with_index do |character, index|
      if character === "g"
        unless buffered[index-1] === "g" or buffered[index+1] === "g"
          return false
        end
      end
    end
    return true
end

p happy_g("gg")
