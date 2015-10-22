//1. sum of the squares (for 10 numbers it should be 385)
//2. the square of the sum (3025)
//3. difference of 1 and 2
//4. be able to calculate it for any number


function calculateSumOfSquares(max){
  var sum = 0;
  for(var i = 1; i <= max; i++){
    sum += i * i;
  }
  return sum;
}

// console.log(calculateSumOfSquares());

function calculateSquareOfSum(max){
  var sum = 0;
  for(var i = 1; i <= max; i++){
    sum += i;
  }
  return sum * sum;
}

// console.log(calculateSquareOfSum());

function calculateDifference(max){
  return calculateSquareOfSum(max) - calculateSumOfSquares(max);
}

console.log(calculateDifference(10));


