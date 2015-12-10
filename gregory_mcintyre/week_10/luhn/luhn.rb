# The Luhn formula is a simple checksum formula used to validate a variety of
# identification numbers, such as credit card numbers and Canadian Social
# Insurance Numbers.
#
# The formula verifies a number against its included check digit, which is
# usually appended to a partial number to generate the full number. This
# number must pass the following test:
#
# Counting from rightmost digit (which is the check digit) and moving left,
# double the value of every second digit.
#
# For any digits that thus become 10 or more, subtract 9 from the result.
#
#   1111 becomes 2121.
#   8763 becomes 7733 (from 2×6=12 → 12-9=3 and 2×8=16 → 16-9=7).
#
# Add all these digits together.
#
#   1111 becomes 2121 sums as 2+1+2+1 to give a check digit of 6.
#   8763 becomes 7733, and 7+7+3+3 is 20.
#
# If the total ends in 0 (put another way, if the total modulus 10 is
# congruent to 0), then the number is valid according to the Luhn formula;
# else it is not valid. So, 1111 is not valid (as shown above, it comes out to
# 6), while 8763 is valid (as shown above, it comes out to 20).
#
# Write a program that, given a number
#
# Can check if it is valid per the Luhn formula. This should treat, for
# example, "2323 2005 7766 3554" as valid. Can add a check digit to make the
# number valid per the Luhn formula. This should give "2323 2005 7766 3554" in
# response to "2323 2005 7766 355".

class Luhn
  DOUBLE_MINUS_9 = {
    0 => 0,
    1 => 2,
    2 => 4,
    3 => 6,
    4 => 8,
    5 => 1,
    6 => 3,
    7 => 5,
    8 => 7,
    9 => 9,
  }

  def self.create(input_without_check_digit)
    with_zero = input_without_check_digit * 10 # assume check digit is 0
    checksum = new(with_zero).checksum
    check_digit = (10 - checksum) % 10         # ensure % 10 will == 0
    with_zero + check_digit                    # append that
  end

  def initialize(input_with_check_digit)
    @digits = input_with_check_digit.to_s.chars.map(&:to_i)
  end

  def check_digit
    @digits.last
  end

  def addends
    result = @digits.reverse
    (1...result.length).step(2).each do |i|
      result[i] = DOUBLE_MINUS_9[result[i]]
    end
    result.reverse!
  end

  def checksum
    addends.inject(:+)        # [1,2,3] => 1 + 2 + 3
  end

  def valid?
    checksum % 10 == 0
  end
end





  # def addends
  #   result = []
  #   @digits.reverse.each_with_index do |digit, index|
  #     if (index + 1).even? # counting is 1 based, index is 0 based
  #       digit = DOUBLE_MINUS_9[digit]
  #     end
  #     result.unshift digit    # put back in order using unshift
  #   end
  #   result
  # end

