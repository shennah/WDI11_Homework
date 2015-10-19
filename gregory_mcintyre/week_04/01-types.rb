# var orange = {
#   colour: "orange duh",
#   isRound: true
# };
# var fruit = [orange];
# var numFruit = fruit.length;
# console.log(typeof orange.colour);   // String
# console.log(typeof orange.isRound);  // Boolean
# console.log(typeof numFruit);        // Number
# console.log(typeof fruit);           // Array
# console.log(typeof orange);          // Object

orange = {
	colour: "orange duh",
	is_round: true,
}
fruit = [orange]
num_fruit = fruit.length

p orange[:colour].class           # String
p orange[:is_round].class         # TrueClass or FalseClass
p num_fruit.class                 # Fixnum (AKA Integer)
p fruit.class                     # Array
p orange.class                    # Hash

