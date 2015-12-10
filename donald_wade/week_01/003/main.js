var rectangle = {
  length: 4,
  width: 4,
};

function isSquare(rectangle) {
  if (rectangle.length === rectangle.width) {
    console.log("Your rectangle is a square.")
  } else {
    console.log("Your rectangle is not a square.")
  }
}

function area(rectangle) {
  var areaOfRectangle = rectangle.length * rectangle.width;
  console.log("Your rectangle has an area of " + areaOfRectangle);
}

function perimeter(rectangle) {
  var perimeter = (rectangle.length * 2) + (rectangle.width * 2);
  console.log("The perimeter of your rectangle is " + perimeter);
}

isSquare(rectangle);
area(rectangle);
perimeter(rectangle);

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 4,
};

var triangle2 = {
  sideA: 4,
  sideB: 4,
  sideC: 4,
};

var triangle3 = {
  sideA: 2,
  sideB: 3,
  sideC: 20,
}

function isEquilateral(triangle) {
  if (triangle.sideA === triangle.sideB && triangle.sideB === triangle.sideC) {
    console.log("Yours is an equilateral triangle.");
  } else console.log("Yours is not an equilateral triangle.");
}

function isIsosceles(triangle) {
  if ((triangle.sideA == triangle.sideB || triangle.sideA == triangle.sideC || triangle.sideB == triangle.sideC) || isEquilateral(triangle)) {
    console.log("Yours is an isosceles triangle.")
  } else console.log("Yours is not an isosceles triangle.")
}

function areaOfTriangle(triangle) {
  var heronS = (triangle.sideA + triangle.sideB + triangle.sideC) / 2;
  var areaT = Math.sqrt((heronS * (heronS - triangle.sideA) * (heronS - triangle.sideB) * (heronS - triangle.sideC)));
  console.log("The area of your triangle is " + areaT.toFixed(4)*10000/10000 );
}

function isTriangleObtuse(triangle) {
  if (Math.pow(triangle.sideA, 2) > (Math.pow(triangle.sideB, 2) + Math.pow(triangle.sideC, 2)) || Math.pow(triangle.sideB, 2) > (Math.pow(triangle.sideA, 2) + Math.pow(triangle.sideC, 2)) ||
      Math.pow(triangle.sideC, 2) > (Math.pow(triangle.sideA, 2) + Math.pow(triangle.sideB, 2))) {
        console.log("Your triangle is obtuse.")
  } else {
    console.log("Your triangle is acute.")
  }
}


// function isTriangleObtuse(triangle) {
//   var hypoteneuse = Math.max(triangle.sideA, triangle.sideB, triangle.sideC);
//   var sideArray = [triangle.sideA, triangle.sideB, triangle.sideC]
//   console.log(sideArray);
//   var indexOfHyp = sideArray.indexOf(hypoteneuse);
//   console.log(indexOfHyp);
//   var shortestSides = sideArray.splice(indexOfHyp, 1);
//   console.log(shortestSides);
//   for (var key in triangle) {
//     if (triangle[key] === hypoteneuse) {
//       var longestSide = triangle[key];
//       console.log(longestSide);
//     }
//     // if longestSide * longestSide >
//   }
// }
