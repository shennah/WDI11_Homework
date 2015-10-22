# Calculator
# Explanation

# You will be building a calculator. A calculator can perform multiple arithmetic operations. Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
# Specification:

# A user should be given a menu of operations
# A user should be able to choose from the menu
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
# This process should continue until the user selects a quit option from the menu
# Phase 1

# Calculator functionality
# Calculator should be able to do basic arithmetic (+,-, *, /)
# Phase 2

# Advanced Calculator functionality
# Calculator should be able to do basic arithmetic (exponents, square roots)
# Phase 3

# User should be given a menu of Calculator functionality
# User should be able to choose intended functionality


#--------------------------------------------
#menu	
	
puts "Press 1 to add, 2 to subtract, 3 to Multiply and 4 to Divide"
puts "1 : Add"
puts "2 : Subtract"
puts "3 : Multiply"
puts "4 : Divide"
puts "5 : Square root"
puts "6 : Exponents"

choice = gets.chomp.to_i

	if choice == 1 
		p "Add"
		p " Whats the first number"
		num1 = gets.chomp.to_i
		p " Whats the second number"
		num2 = gets.chomp.to_i
		answer = num1 + num2
		p " #{num1} + #{num2} = #{answer}"



	elsif choice == 2
		p "Subtract"
		p " Whats the first number"
		num1 = gets.chomp.to_i
		p " Whats the second number"
		num2 = gets.chomp.to_i
		answer = num1 - num2
		p " #{num1} - #{num2} = #{answer}"



	elsif choice == 3
		p "Multiply"
		p " Whats the first number"
		num1 = gets.chomp.to_i
		p " Whats the second number"
		num2 = gets.chomp.to_i
		answer = num1 * num2
		p " #{num1} * #{num2} = #{answer}"



	elsif choice == 4
		p "Divide"
		p " Whats the first number"
		num1 = gets.chomp.to_i
		p " Whats the second number"
		num2 = gets.chomp.to_i
		answer = num1 / num2
		p " #{num1} / #{num2} = #{answer}"

		elsif choice == 5
		p "Square a number"
		p " Whats number would you like to square??"
		num = gets.chomp.to_i
		answer = num * num
		p "The square root of #{num}  = #{answer}"

	# elsif choice == 6
	# 	p "Exponents"
	# 	p " Whats the first number"
	# 	num1 = gets.chomp.to_i
	# 	p " Whats the second number"
	# 	num2 = gets.chomp.to_i
	# 	answer = num1 / num2
	# 	p " #{num1} / #{num2} = #{answer}"

	else
		p "Please select a number"
end








						


	

		
		


