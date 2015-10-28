# 1. school = School.new("Haleakala Hippy School")
# 2. school.db
#    # => {}
# 3. school.add("James", 2)
#    school.db
#    # => {2 => ["James"]}
# 4. school.add("Blair", 2)
#    school.add("Jennifer", 3)
#    school.add("Little Billy", 1)
#    school.db
#    # => {2 => ["James", "Blair"], 3 => ["Jennifer"], 1 => ["Little Billy"]}
# 5. school.grade(2)
#    # => ["James", "Blair"]
# 6. school.sort
#    # => {1 => ["Little Billy"], 2 => ["Blair", "James"], 3 => ["Jennifer"]}


class School

  attr_reader :db
  # attr_writer 
  # attr_accessor 
  def initialize(school_name)
    @school_name = school_name
    @db = {}
  end

  def add(student, grade)
    db[grade] ||= []
    db[grade] << student
  end

  def grade(level)
    db[level] ||= []
  end

  def sort
    # sorted_db = db.each {|grade, students| [grade, students.sort! ]}.sort
    # sorted_db = db.sort_by {|grade, students| students.sort!; grade}

    sorted_db = db.map {|grade, students| [grade, students.sort]}.sort
    
    # sorted = Hash[sorted_db]
    sorted = sorted_db.to_h
  end

end

school = School.new("Haleakala Hippy School")
puts school.db

school.add("James", 2)
puts school.db

school.add("Blair", 2)
school.add("Jennifer", 3)
school.add("Little Billy", 1)
puts school.db

p school.grade(2)
p school.grade(4)

puts school.sort


