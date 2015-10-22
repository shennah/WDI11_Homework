# get birthday date of the person
# calculate the age
# give spanks

require 'date'

def ask(question)
  print "#{question}"
  gets.chomp.to_i
end

def calculateAge(year, month, day)
  today = Date.today
  this_year = today.year
  persons_age = this_year - year
  if (today < Date.new(this_year, month, day))
    persons_age -= 1
  end

  persons_age
end

def giveSpanks()
  year = ask("What year you were born?")
  month = ask("What month you were born? Please write it in number.")
  day = ask("What day of the month you were born?")

  calculateAge(year, month, day).times do
    puts "SPANK"
  end
end

giveSpanks()






