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

def add(n1, n2)
	n1 + n2
end

def subtract(n1, n2)
	n1 - n2
end

def multiply(n1, n2)
	n1 * n2
end

def divide(n1, n2)
	n1.to_f/n2.to_f
end

def exponants(n1, n2)
	n1**n2
end

def root(n1)
	Math.sqrt(n1)
end

def menu
	print "Enter a number to choose a mathamatical operation:\n"
	print "1) addition\n"
	print "2) subtraction \n"
	print "3) multiplication\n"
	print "4) divition\n"
	print "5) exponants\n"
	print "6) square root\n"
	print "7) quit\n"
end

def calc(opp)

		print "enter number 1:"
		n1 = gets.to_i

		if opp == '6'
			print "The square root of #{n1} = #{root n1}"
			print "\n"
		else
			print "enter number 2:"
			n2 = gets.to_i
			case opp
				when "1"
					print "#{n1} plus #{n2} = #{add(n1,n2)}"
				when "2"
					print "#{n1} minus #{n2} = #{subtract(n1,n2)}"
				when "3"
					print "#{n1} multiplyed by #{n2} = #{multiply(n1,n2)}"
				when "4"
					print "#{n1} divided by #{n2} = #{divide(n1,n2)}"
				when "5"
					print "#{n1} to the power of #{n2} = #{exponants(n1,n2)}"
			end
			print "\n"
		end
end


def main

	opp = 0
	
	loop do
		menu
		print "Your choice: "
		opp = gets.chomp
		if opp == "7"
			break
		end
		calc(opp)
	end
end

main



# * repeatedly:
#    * print menu
#    * get choice
#    * calculation
#    * print result






