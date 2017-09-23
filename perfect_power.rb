#Are numbers perfect power numbers?
#Perfect power (n): there exists m > 1 && k > 1 where m**k == n;

def isPP(n)

  #identify reasonable bases and powers
  bases = [*2..squareFloor(n)]
  powers = [*2..logFloor(n)]
  bases.select! {|num| num.even? } if n.even?

  power_pairs = []

  bases.each do |base|
    powers.each do |power|
      power_pairs << [base, power] if base**power == n
      #extra safeguard for runtime
      break if base**power > n
    end
    #pulls only the first pair, then breaks loop
    break if power_pairs.size > 0
  end
  #return nil for non-PP numbers
  power_pairs.empty? ? nil : power_pairs.first
end

#helper functions to reduce runtime
def squareFloor(n)
  Math.sqrt(n).floor
end

def logFloor(n)
  Math.log2(n).floor
end

#becomes inefficient after exceeding 10 trillion
p isPP(4_000_000_000_000)
