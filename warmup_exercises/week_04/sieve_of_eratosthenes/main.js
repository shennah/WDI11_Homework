//create a range of possible primes
//find our primes


function createRange(startNumber, finishNumber){
  var range = [];
  for(var i = startNumber; i <= finishNumber; i++){
    range.push(i);
  }

  return range;
}

function getPrimes(startNum, finishNum){
  var possibilities = createRange(startNum, finishNum),
    primesArray = [];

  while(possibilities.length > 0){
    //we are getting 1st elements from the range array
    var prime = possibilities.shift();
    primesArray.push(prime);

    //check if the rest of the range array has any numbers evenly devisible on this 1st number
    possibilities = possibilities.filter(function(num){
      return num % prime !== 0;
    })
  }

  return primesArray;
}

console.log(getPrimes(2, 15));



