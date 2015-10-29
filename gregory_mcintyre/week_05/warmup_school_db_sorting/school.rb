
class School
  def initialize(name)
    @name = name
    @db = {}
  end

  def db
    @db
  end

  def add(name, grade)
    @db[grade] ||= []
    @db[grade] << name
  end

  def grade(level)
    @db[grade] || []
  end

  def sort
    @db.map{|grade, names| [grade, names.sort] }.sort.to_h
  end

  def sort!
    @db.each{|grade, names| names.sort! }
    @db = @db.sort.to_h # no in place sort on hashes (?), have to re-assign to @db
  end
end

school = School.new("Degrassi")
school.add("Tim", 11)
school.add("Kaitlin", 10)
school.add("Joey", 10)

p school.db

puts "school.sort"
p school.sort
puts "school.db"
p school.db

puts "school.sort!; school.db"
school.sort!
p school.db
