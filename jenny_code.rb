def missing(nums, str)
  str.gsub!(" ", "")
  nums.sort!
  if str[nums[0]].nil? || str[nums[1]].nil? || str[nums[2]].nil?
    return "No mission today"
  end
  return str[nums[0]].downcase + str[nums[1]].downcase + str[nums[2]].downcase
end

p missing([5, 0, 3], "I love you")
