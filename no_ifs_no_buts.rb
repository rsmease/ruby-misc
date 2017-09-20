# Write a function that accepts two parameters (a and b) and says whether a is smaller than, bigger than, or equal to b.

# Here is an example code:

# var noIfsNoButs = function (a,b) {
#   if(a > b) return a + " is greater than " + b
#   else if(a < b) return a + " is smaller than " + b
#   else if(a == b) return a + " is equal to " + b
# }
# There's only one problem...

# You can't use if statements, and you can't use shorthands like (a < b)?true:false;

# in fact the word "if" and the character "?" are not allowed in the code.

# Inputs are guarenteed to be numbers
#failed; had to review others' answers
#learn about the spaceship operator
#a <=> b :=
#   if a < b then return -1
#   if a = b then return  0
#   if a > b then return  1
#   if a and b are not comparable then return nil
# def no_ifs_no_buts(a, b)
#   result = a <=> b
#   case
#   when  result == -1
#     "#{a} is smaller than #{b}"
#   when  result == 1
#     "#{a} is greater than #{b}"
#   else
#     "#{a} is equal to #{b}"
#   end
# end
