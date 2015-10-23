class Shape
	def initialize(colour)
		@colour = colour # this.colour = colour
	end

	def colour()
		@colour
	end

	# ...
end

class Square < Shape
	def sides()
		4
	end

	def draw()
		puts "[ ]"
	end
end

class Triangle < Shape
	def sides()
		3
	end

	def draw()
		puts "/\\"
	end
end

shape1 = Square.new('red')
shape2 = Triangle.new('green')

a = [shape1, shape2]
for shape in a
	puts shape.colour
	shape.draw
end
