// this file is to be used with index-1.html //

function squareNumber(num) {
  var num = document.getElementsByName('num')[0].value;
  console.log(num);
  console.log(typeof(Number(num)));
  newNum = Number(num);
  result = newNum * newNum;
  document.write("Your number (" + newNum + ") squared is " + result);
}

function halfNumber(num) {
  var num = document.getElementsByName('num2')[0].value;
  newNum = Number(num);
  var answer = (newNum / 2);
  document.write("Half of your number (" + newNum + ") is " + answer);
}

function percentOf(num1, num2) {
  var num1 = document.getElementsByName('num3')[0].value;
  var num2 = document.getElementsByName('num4')[0].value;
  var perCent = (num1 / num2 * 100).toFixed(2) * 100 / 100;
  document.write("Your first figure (" + num1 + ") is " + perCent + " % of your second figure (" + num2 + ")");
}

function areaOfCircle(radius) {
  var radius = document.getElementsByName('radius')[0].value;
  var area = (Math.PI * (radius * radius)).toFixed(2) * 100 / 100;
  document.write("The area of your circle is " + area);
}
