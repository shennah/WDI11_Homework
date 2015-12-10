puts "-"*40, "create"

hash = {}
serge = {
    :name => "Serge",
    :nationality => "French"
}
serge = {
    "name" => "Serge",
    "nationality" => "French"
}
serge = { # Keys stored as symbols!
    name: "Serge",
    nationality: "French"
}

hash = Hash.new
hash.default = "Foo"
hash[123]


puts "-"*40, "read"

serge = { # Keys stored as symbols!
    name: "Serge",
    nationality: "French"
}
p serge[:name]
# cannot write serge.name

serge.each do |key, value|
  puts "key #{key}, value #{value}"
end

serge.each do |pair|
  p pair
end

p serge.values
p serge.values_at(:nationality, :name)


puts "-"*40, "update"

p serge.merge!({name: "Phillipe"})

# JS: serge.name = "X"
serge[:name] = "X"


puts "-"*40, "delete"

p serge.delete(:name)
p serge

