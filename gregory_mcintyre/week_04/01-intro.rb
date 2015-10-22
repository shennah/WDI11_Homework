# The sum of the squares of the first ten natural numbers is,
#
#     1**2 + 2**2 + ... + 10**2 = 385
#
# The square of the sum of the first ten natural numbers is,
#
#     (1 + 2 + ... + 10)**2 = 55**2 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 - 385 = 2640.
#
# Make it so that it doesn't just work for the number 10.

def square_of_sum(n)
  (1..n).inject(:+)**2
end

def sum_of_squares(n)
  (1..n).map{|x| x**2 }.inject(:+)
end

def square_of_sum_minus_sum_of_squares(n)
  square_of_sum(n) - sum_of_squares(n)
end

p square_of_sum_minus_sum_of_squares(10) # 2640
p square_of_sum_minus_sum_of_squares(20)
p square_of_sum_minus_sum_of_squares(2_000_000) # 2 million
