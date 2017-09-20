class Arith
  # Code here
  def initialize(number)
  	@number = number
  	digits = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"];
  	@number_to_i = digits.index(@number);
  end

  def add(number)
  	digits = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"];
  	sum_to_i = digits.index(number) + @number_to_i
  	return digits[sum_to_i];
  end

end

my_three = Arith.new("three");
puts my_three.add("four")