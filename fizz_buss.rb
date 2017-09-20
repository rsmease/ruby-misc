def fizzbuzz(n)
  fizzed = []
  [*1..n].each do |num|
    if num % 5 == 0 && num % 3 == 0
      fizzed << "FizzBuzz"
    elsif num % 5 == 0
      fizzed << "Buzz"
    elsif num % 3 == 0
      fizzed << "Fizz"
    else
      fizzed << num
    end
  end
  fizzed
end

p fizzbuzz(7)
