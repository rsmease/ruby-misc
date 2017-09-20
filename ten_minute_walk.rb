def isValidWalk(walk)
  return false unless walk.size == 10

  bipolar_count = {north_south: 0, east_west: 0}
  walk.each do |direction|
    case direction
    when "n"
      bipolar_count[:north_south] += 1
    when "s"
      bipolar_count[:north_south] -= 1
    when "e"
      bipolar_count[:east_west] += 1
    else
      bipolar_count[:east_west] -= 1
    end
  end

  return bipolar_count[:north_south] == 0 &&
          bipolar_count[:east_west] == 0
end

puts isValidWalk(['n','s','n','s','n','s','n','s','n','s'])
