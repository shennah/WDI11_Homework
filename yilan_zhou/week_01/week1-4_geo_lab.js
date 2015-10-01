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

console.log(isSquare(rectangle));

function calcArea(shape) {
    return shape.length * shape.width;
}
console.log(calcArea(rectangle));

function calcPerimeter(shape) {
//    var result = shape.length + shape.width;
//    return result * 2;
    return (parseInt(shape.length,10) + parseInt(shape.width,10)) * 2;
}
console.log(calcPerimeter(rectangle));

//***triangle***
var triangle = {
    sideA:3,
    sideB:4,
    sideC:4
};

function isEquilateral (shape) {
    if (shape.sideA === shape.sideB && shape.sideA === shape.sideC) {
        return "It is equilateral.";
    } else {
        return "It is not equilateral";
    }
}
console.log(isEquilateral(triangle));

function isIsosceles(shape) {
    if(shape.sideA === shape.sideB || shape.sideA === shape.sideC || shape.sideB === shape.sideC) {
        return "It is isosceles.";
    } else {
        return "It is not isosceles.";
    }
}
console.log(isIsosceles(triangle));




























