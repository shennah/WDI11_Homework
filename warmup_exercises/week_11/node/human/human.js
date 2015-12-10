var hairColour = "brown";
var gender = "male";

var eyeColour = "blue";

var say = function(){
  console.log("Hello GA!");
}

var describe = function(){
  // console.log("Our human is " + gender + " with " + hairColour + " hair and " + eyeColour + " eyes");
  return gender;
}

module.exports.describe = describe;
module.exports.gender = gender;
