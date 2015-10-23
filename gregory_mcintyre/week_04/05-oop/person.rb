# PERSON
# Class is Person
# Responsibilities / Requirements
#   - thinking / make decisions
#   - touch, sight, hearing, ...
#   - talk/speak
#   - move around
#   - know how hungry / tired / etc. they are
# Collaborators / other classes it knows about
#   - Furniture
#   - Food
#   - Person
#   - inherits behaviour from Mammal / Animal

class Animal
end

class Person < Animal
  def initialize
    @hunger = 0
    @satiation = 100 # percent
  end

  def eat_food(food)
    @satiation += food.satiation_value
    @fatness = (@satiation - 100)
  end

  def decide_next_activity()
  end

  def feel_object_in_front()
  end

  def say(thing_to_say)
    `say "#{thing_to_say}"`
  end

  def say_to_person(person, thing_to_say)
  end

end

p = Person.new
p.say("I can't believe this actually works")