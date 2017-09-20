def gap(g, m, n)
  primes = [*m..n].select { |num| prime?(num) }
  for i in 0...primes.size - 1
    return [primes[i], primes[i + 1]] if primes[i + 1] - primes[i] == g
  end
  nil
end

def prime?(num)
  return false if num < 2 || num.even?
  possible_primes = [*3...num].reject { |num| num.even? }
  possible_primes.each { |check| return false if num % check == 0 }
  true
end

p gap(6, 100, 110)
