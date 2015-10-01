//1/10/2015
//https://gist.github.com/wofockham/dacf2da17c743afb2b17
// homework associated array

//***rectangle**
var rectangle = {
    length:4,
    width:4
};

function isSquare(shape) {
    if(shape.length===shape.width) {
        return "It is square.";
    } else {
        return "It is not square.";
    }
}

function calcArea(shape) {
    return shape.length * shape.width;
}

function calcPerimeter(shape) {
    return (parseInt(shape.length,10) + parseInt(shape.width,10)) * 2;
}

console.log(isSquare(rectangle));
console.log(calcArea(rectangle));
console.log(calcPerimeter(rectangle));

//***triangle***
var triangle = {
    sideA:3,
    sideB:4,
    sideC:4
    //sideA:12,
    //sideB:18,
    //sideC:22
};

function isEquilateral (shape) {
    var result = false;
    if (shape.sideA === shape.sideB && shape.sideA === shape.sideC && shape.sideB===shape.sideC) {
        result = true;
    } 
    if (result) {
        console.log("It is equilateral."); 
    } else {
        console.log("It is not equilateral.");
    }
    return result;
}

function isIsosceles(shape) {
    var result = false;
    if(shape.sideA === shape.sideB || shape.sideA === shape.sideC || shape.sideB === shape.sideC) {
        result = true;
    } 
    if (result) {
        console.log("It is isosceles.");
    }else {
        console.log("It is not isosceles.");
    }
    return result;
}

function calcTriangleArea(thisTriangle) {
    var a = thisTriangle.sideA;
    var b = thisTriangle.sideB;
    var c = thisTriangle.sideC;
    var p = (a+b+c) / 2;
    var area = parseFloat(Math.sqrt(p*(p-a)*(p-b)*(p-c))).toFixed(2);
    console.log("Triangle area is " + area);
    return area;
}

function isObtuse(thisTriangle) {
    var a = thisTriangle.sideA;
    var b = thisTriangle.sideB;
    var c = thisTriangle.sideC;
    var maxSide = Math.max(a,b,c);
    var result = false;

    if (isEquilateral(thisTriangle)) {  // if a==b==c
        result = false;
    } else if(isIsosceles(triangle)) {  //if it is isosceles
        if ((a===b && (a*a + b*b) < c*c) || (a===c && (a*a + c*c) < b*b)|| (b===c && (b*b + c*c) < a*a)) {
        result=true;
        } 
    } else if ((a === maxSide && (b*b + c*c) < a*a) || (b === maxSide && (a*a + c*c) < b*b) || (c === maxSide && (b*b + a*a) < c*c)) {
        //else find maxSide;
        result = true;
    }
    if (result) {
        console.log( "It is obtuse");
    } else {
        console.log( "It is not obtuse.");
    }
return result;
}

isEquilateral(triangle);
isIsosceles(triangle);
calcTriangleArea(triangle);
isObtuse(triangle);























