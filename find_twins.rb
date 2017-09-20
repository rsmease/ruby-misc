require 'set'

def elimination(arr)
  return nil if Set.new(arr).size === arr.length
  arr.each do |number|
    return number if arr.count(number) > 1
  end
  return "failed"
end
