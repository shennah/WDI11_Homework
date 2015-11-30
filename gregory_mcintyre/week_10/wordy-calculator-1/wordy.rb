# Write a program that takes a word problem in the format:
#
# What is 5 plus 13? and returns the answer as an integer.
#
# The program should handle large numbers and negative numbers.
#
# Use the tests to drive your solution by deleting the skip in one test at a
# time.
#
# Source
#
# Inspired by one of the generated questions in the Extreme Startup game.

class Calculator
  def ask(q)
    if match = /What is (-?[\d]+) plus (-?[\d]+)\?/.match(q)
      match[1].to_i + match[2].to_i
    end
  end
end
