# JS:
# for (var i = 1; i <= 10; i++) {
#	
# }

i = 1
while i <= 10
	# stuff in here
	i += 1
end

# for (var i = 0; i <= a.length; i++) {
#	  console.log(a[i]);
# }

# _.forEach(a, function(item){
#   console.log(item);
# })

a = [10, 20, 30]
a.each { |item|           # Array's each method
  p item
}

5.times {|n|
	p n
}

5.downto(0).each {|n|     # Enumerator's each method
	p n
}

5.downto(0) {|n|          # Shorter alternative
	p n
}

range = 1..10
range.each{|item|         # Range's each method
	p item
}

limit = 1000
i = 0
loop {                    # built in function
	p "forever"
	i += 1
	if i > limit
		break                 # break, just like in JS
	end
}

# You can also use do ... end rather than { ... }
# Advice: Use do ... end unless your loop is on 1 line of code

a.each do |item|
	# line of code
	# line of code
end

a.each{|item| p item }

# Older syntax, just in case you ever encounter it:

for item in a
	p item
end

# This works the same as calling `each` on a


