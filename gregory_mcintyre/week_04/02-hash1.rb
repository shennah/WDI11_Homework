# * Every value in Ruby is an object.
# * Every object has an integer ID.
# * These integer IDs are used for Hash
#   object keys.

# Some object ids are based on the value,
# and are predictable (deterministic)

p false.object_id
p true.object_id
p nil.object_id
p 22.object_id
p 23.object_id
p 23.object_id
p :my_variable.object_id
p :my_variable.object_id

puts "-"*20

# Most object ids are a location in memory

p "Wolf".object_id
p "Wolf".object_id
p "Wolf2".object_id
p "Wolf2".object_id
p({}.object_id)
p({}.object_id)