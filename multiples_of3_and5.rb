def solution(number)
  all_nums = [*3...number]
  nums3_and5 = all_nums.select { |number| by_three_or_five?(number) }
  nums3_and5.empty? ? 0 : nums3_and5.reduce(:+)
end

def by_three_or_five?(number)
  number % 3 == 0 || number % 5 == 0
end
