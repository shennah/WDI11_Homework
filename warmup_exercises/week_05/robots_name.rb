# generate_name
# reset_name
# name in format VB789
# prefix - VB
# suffix - 789


class Robot

  #age is set up by default to 2
  def initialize(age=2)
    @age = age.to_i
    generate_name
  end

  def age
    @age
  end

  def reset_name
    @name = nil
  end

  def generate_name
    #can be replaced with shortcur @name ||= "#{prefix}#{suffix}"
    @name = @name || "#{prefix}#{suffix}" 
  end

  private

  def alphabet
    ('A'..'Z').to_a
  end

  def prefix
    alphabet.sample(2).join
  end

  def suffix
    rand(100..999)
  end

end

garry = Robot.new

puts garry.generate_name
puts garry.generate_name

garry.reset_name
puts garry.generate_name
puts garry.generate_name

















