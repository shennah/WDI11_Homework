function numberSquare(number){
  var square = number * number;
  console.log("the square of " + number + " is " + square);
  return square;
}

function hulfTheNumber(number){
  console.log("The hulf of " + number + " is " + number/2);
  return number/2;
}

// complex function that calls on few other functions
function complexMath(newNumber){
  var square = numberSquare(newNumber);
  var hulf = hulfTheNumber(square);
  console.log("our number is " + hulf);
  return hulf;
}

// numberSquare(4);

complexMath(5);