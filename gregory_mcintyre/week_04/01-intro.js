// The sum of the squares of the first ten natural numbers is,
//
//     1**2 + 2**2 + ... + 10**2 = 385
//
// The square of the sum of the first ten natural numbers is,
//
//     (1 + 2 + ... + 10)**2 = 55**2 = 3025
//
// Hence the difference between the sum of the squares of the first ten natural
// numbers and the square of the sum is 3025 - 385 = 2640.
//
// Make it so that it doesn't just work for the number 10.

function sumOfSquares(n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i * i;
  }
  return sum;
}

function squareOfSum(n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum * sum;
}


function squareOfSumMinusSumOfSquares(n) {
  return squareOfSum(n) - sumOfSquares(n);
}

console.log(squareOfSumMinusSumOfSquares(10));
console.log(squareOfSumMinusSumOfSquares(20));
console.log(squareOfSumMinusSumOfSquares(2000000));
