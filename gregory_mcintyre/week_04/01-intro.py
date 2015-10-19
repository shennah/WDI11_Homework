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

def square_of_sum(n):
    sum = 0
    for i in range(1, n + 1):
        sum += i
    return sum * sum

def sum_of_squares(n):
    sum = 0
    for i in range(1, n + 1):
        sum += i**2
    return sum

def square_of_sum_minus_sum_of_squares(n):
    return square_of_sum(n) - sum_of_squares(n)

print square_of_sum_minus_sum_of_squares(10) # 2640
print square_of_sum_minus_sum_of_squares(20)
print square_of_sum_minus_sum_of_squares(2000000) # 2 million
