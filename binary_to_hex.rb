
def rgb(r, g, b)

  colors = [r, g, b]

  colors.each_index do |i|
    colors[i] = 0 if colors[i] < 0
    colors[i] = 255 if colors[i] > 255
  end

  r_hex = (colors[0]).to_s(16).upcase.rjust(2, "0")
  g_hex = (colors[1]).to_s(16).upcase.rjust(2, "0")
  b_hex = (colors[2]).to_s(16).upcase.rjust(2, "0")

  "#{r_hex}#{g_hex}#{b_hex}"

end

p rgb(148, 0, -211)
