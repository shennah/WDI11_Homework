# "Pling" divisible by 3
# "Plong" divisible by 5
# "Plang" divisible by 7
# return integer in all other cases


def conver_to_raindrops(number)

  str = ""
  # '<<' Append stands for +=
  str << "Pling" if number % 3 == 0
  str << "Plong" if number % 5 == 0
  str << "Plang" if number % 7 == 0

  return str unless str.empty?
  number.to_i
  
end

puts conver_to_raindrops(6)
puts conver_to_raindrops(15)
puts conver_to_raindrops(105)
puts conver_to_raindrops(4)