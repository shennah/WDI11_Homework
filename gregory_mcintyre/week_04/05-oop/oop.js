// Here are two objects which can be treated
// the same way, even though they behave
// differently.

var regularFood = {
  x: 10,
  y: 20,
  colour: 'red',
  draw: function() {
    console.log("drawing food with colour " + this.colour + " at " + this.x + "," + this.y + "...");
  },
  eat: function() {
    console.log("making snake longer...");
  }
};


var speedFood = {
  x: 20,
  y: 30,
  colour: 'blue',
  draw: function() {
    console.log("drawing food with colour " + this.colour + " at " + this.x + "," + this.y + "...");
  },
  eat: function() {
    console.log("speeding game up for 10 seconds...");
  }
};


var foodBits = [regularFood, speedFood];

for (var i = 0; i < foodBits.length; i++) {
  foodBits[i].draw();
}
for (var i = 0; i < foodBits.length; i++) {
  foodBits[i].eat();
}
