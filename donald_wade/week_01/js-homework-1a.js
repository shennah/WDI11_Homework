// This file is to be used with index-1a.html //

function squareNumber(num) {
  result = num * num;
  document.write("<p>Your number (" + num + ") squared is " + result + "</p>");
  return result;
}

function halfNumber(num) {
  var answer = (num / 2);
  document.write("<p>Half of your number (" + num + ") is " + answer + "</p>");
  return answer;
}

function percentOf(num1, num2) {
  var perCent = (num1 / num2 * 100).toFixed(2) * 100 / 100;
  document.write("<p>Your first figure (" + num1 + ") is " + perCent + " % of your second figure (" + num2 + ")</p>");
  return perCent;
}

function areaOfCircle(radius) {
  var area = (Math.PI * (radius * radius)).toFixed(2) * 100 / 100;
  document.write("<p>The area of your circle is " + area + "</p>");
  return area;
}

function partTwo(num) {
  var num = document.getElementsByName('finalNum')[0].value;
  var blob = squareNumber(halfNumber(num));
  var area = areaOfCircle(blob);
  var finalAnswer = percentOf(area, blob);
  var text =  "Percentage: ";
  document.write("<p>" + text + " " + finalAnswer + "%" + "</p>");
}
