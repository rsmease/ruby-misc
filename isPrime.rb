# Test if number is prime
def isPrime(num)
  return true if [2, 3].include?(num)
  return false if num < 2 || num.even?

  checklist = [*2...num].reject { |num| num.even? }
  checklist.each { |check| return false if num % check == 0 }

  true
end
