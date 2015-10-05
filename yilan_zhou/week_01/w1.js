// https://gist.github.com/wofockham/8f953ac7f33125898071
//homework week1-2 calculator
var a = 2;
var b = 6;
var r = 4;

function squareNumber (n) {
    return Math.pow(n,2);
}
console.log("The result of squaring the number " + a + " is " + squareNumber(a));

function halfNumber(n){
    return n/2;
}
console.log("Half of " + a + " is " + halfNumber(a));

function percentOf(a,b) {
    var n = parseFloat(a / b * 100).toFixed(2);
    return  n + "%";
}
console.log(a + " is " + percentOf(a,b) + " of " + b);

function areaOfCircle(r) {
    var a = parseFloat(Math.PI * r * r).toFixed(2);
    return a;
}
console.log("The area for a circle with radius " + r + " is " + areaOfCircle(r) + ".")

function calcNum(n) {
    var x,y;
    x = squareNumber(halfNumber(n));
    x = percentOf(x, areaOfCircle(x));
    return x;
}
console.log(calcNum(6));

