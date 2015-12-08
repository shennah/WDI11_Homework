var color = "black";
var convertible = true;
var speed = 0;

var accelerate = function(speed){
  console.log("Your speed was: " + speed);
  speed += 10;
  console.log("After accelerate your speed is: " + speed);
  return speed;
} 

var decelerate = function(speed){
  console.log("Your speed was: " + speed);
  speed -= 5;
  console.log("After deceleration your speed is: " + speed);
  return speed;
}


module.exports.color = color;
module.exports.convertible = convertible;
module.exports.speed = speed;

module.exports.accelerate = accelerate;
module.exports.decelerate = decelerate;
