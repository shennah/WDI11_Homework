// Here is the JS for doing "classes"
// like we do in Ruby.

function Food(x, y){
  this.x = x;
  this.y = y;
}
Food.prototype.draw = function() {
  console.log("drawing food with colour " + this.colour + " at " + this.x + "," + this.y + "...");
}


function RegularFood(x, y){
  Food.call(this, x, y);
  this.colour = "red";
}
RegularFood.prototype = new Food();
RegularFood.prototype.eat = function() {
  console.log("making snake longer...");
};
RegularFood.prototype.constructor = RegularFood;


function SpeedFood(x, y){
  Food.call(this, x, y);
  this.colour = "blue";
}
SpeedFood.prototype = new Food();
SpeedFood.prototype.eat = function() {
  console.log("speeding game up for 10 seconds...");
};
SpeedFood.prototype.constructor = SpeedFood;


var regularFood = new RegularFood(10, 20);
var speedFood = new SpeedFood(20, 30);

var foodBits = [regularFood, speedFood];

for (var i = 0; i < foodBits.length; i++) {
  foodBits[i].draw();
}
for (var i = 0; i < foodBits.length; i++) {
  foodBits[i].eat();
}
