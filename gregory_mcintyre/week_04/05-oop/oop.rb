# Here is oop2.js but written in Ruby.
# Notice how cleaner it is.

class Food
  def initialize(x, y)
    @x = x              # this.x = x
    @y = y
  end

  def draw
    puts "drawing food with colour #{colour} at #{x},#{y}"
  end

  def eat
    #raise NotImplementedError  # each sub-class has to implement this!

    puts "making snake longer..."

  end

  attr_reader :x, :y      # defines two functions, x and y
  attr_accessor :colour   # defines two functions, colour and colour=

  # def x
  #   @x
  # end

  # def y
  #   @y
  # end

  # def colour
  #   @colour
  # end

  # def colour=(value)
  #   @colour = value
  # end
end

class RegularFood < Food
  def initialize(x, y)
    super(x, y)              # call Food's initialize method
    self.colour = 'red'      # better than @colour = 'red', why?
  end

  def eat
    puts "making snake longer..."
  end
end


class SpeedFood < Food
  def initialize(x, y)
    super(x, y)
    self.colour = 'blue'
  end

  def eat
    super
    puts "speeding game up for 10 seconds..."
  end
end

food_bits = [
  RegularFood.new(10, 20),
  SpeedFood.new(20, 30),
]

f = RegulardFood.new(40, 60)
f.colour         # OK, calling a function colour
f.colour=("red") # OK, calling a function colour=
f.colour = "red" # OK, calling a function colour=

food_bits.each do |food|
  food.draw
end

food_bits.each do |food|
  food.eat
end
