# if ( true or false) {
# 	  // commands to run
# }

oranges_are_round = true
if oranges_are_round
	p 'yes'
end

# JS: > < && || ==
# Ruby: Same, use double equals (== and !=)

# if (suburb === "Manly") {
# 	console.log("Yuck Manly");
# } else if (suburb === "Cronulla") {
# 	console.log("Oh dear");
# } else { 
#   console.log("Is that in Melbourne?");
# }

suburb = "Manly"
if suburb == "Manly"
	puts "<Disparaging remark about Manly>"
elsif suburb == "Cronulla"
	puts "<Disparaging remark about Cronulla>"
else
	puts "I think that's a suburb in Melbourne"
end

case suburb
when "Manly"
	puts ""
when "Cronulla"
	puts ""
else
	puts ""
end

responses = {
	Manly: "<Disparaging remark about Manly>",
	Cronulla: "<Disparaging remark about Cronulla>",
}

responses = {
	"Manly" => "<Disparaging remark about Manly>",
	"Cronulla" => "<Disparaging remark about Cronulla>",
}
responses.default = "Is that in Melbourne?"
puts responses[suburb]


x = 10
if x > 5
	if oranges_are_round
		puts "x > 5 and oranges are round"
	end
end

if x > 5
	x_greater_5 = true
else
	x_greater_5 = false
end
p x_greater_5



if x > 5
	puts "x greater than 5"
end

puts "x is big" if x > 5

unless x > 5
	puts "x is small"
end

puts "x is small" unless x > 5


unless x > 5 && x < 0
	# what??
end


if !(x > 5 && x < 0)
end

if x <= 5 || x >= 0
end


