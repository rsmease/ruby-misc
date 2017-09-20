def perimeter(n)
  return fibonnacci(n).reduce(:+) * 4;
end

def fibonnacci(n)
  nums = [1, 1]
  return nums if n == 1

  while (nums.size < n + 1)
    next_num = nums[-1] + nums[-2]
    nums << next_num
  end

  return nums
end
