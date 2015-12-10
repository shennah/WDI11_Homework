var subway = {
  "LN" : ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square", "8th Avenue"],
  "LL" : ["8th Avenue", "6th Avenue", "Union Square", "3rd Avenue", "1st Avenue"],
  "L6" : ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"],
}

var LN = ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square", "8th Avenue"]
var LL = ["8th Avenue", "6th Avenue", "Union Square", "3rd Avenue", "1st Avenue"]
var L6 = ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"]

function sameLine(line, getOn, getOff, silent) {
  var yourJourney = []; // empty array
  var stationList = ""; // empty string
  var indexOn = line.indexOf(getOn); // index of geton station in station array
  var indexOff = line.indexOf(getOff); // index of getoff station in station array
  var stationCount = indexOff - indexOn; // number of stations is the difference between these two values
  if (stationCount > 0) { // if that value is positive you're going from low to high in the array
    for (i = indexOn; i < indexOff; i++) {
      yourJourney.push(line[i + 1]); // add all the values encountered into this empty array
      stationList += "<li class='stations'>" + line[i + 1] + "</li>";
    }
  } else if (stationCount < 0) {
    for (i = indexOn; i > indexOff; i--) {
      yourJourney.push(line[i - 1]);
      stationList += "<li class='stations'>" + line[i - 1] + "</li>";
    }
  }
  var stationCountAbs = Math.abs(stationCount);
  if (!silent) {
    console.log("Your journey will entail " + stationCountAbs + " stops.");
    document.write("Your journey will entail " + stationCountAbs + " stops:");
    document.write(stationList);
    console.log(stationList);
    return [stationCountAbs, yourJourney];
  } else {
    return [stationCountAbs, yourJourney];
  }
}

// sameLine(LL, "8th Avenue", "1st Avenue");
// sameLine(L6, "Astor Place", "Grand Central");

function differentLines(lineOn, getOn, lineOff, getOff) {
  var journeyWithChanges = "";
  console.log(sameLine(lineOn, getOn, "Union Square", true),
  sameLine(lineOff, "Union Square", getOff, true));
  var stationCount = sameLine(lineOn, getOn, "Union Square", true)[0] +   sameLine(lineOff, "Union Square", getOff, true)[0];
  var stationListArray = [sameLine(lineOn, getOn, "Union Square", true)[1].concat(sameLine(lineOff, "Union Square", getOff, true)[1])];

   // var stationCount = sameLine(lineOn, getOn, "Union Square", true)[0];

  console.log(stationCount);

  console.log(stationListArray);
  document.write("<p class='station'>Your train will stop at: ");
  for (var i = 0; i < stationListArray[0].length; i++) {
    console.log(stationListArray[0][i]);
    document.write("<li class='stations'>" + stationListArray[0][i]); // +  "</p>");
  }
}

// differentLines(LL, "8th Avenue", L6, "Astor Place");
// differentLines(L6, "Grand Central", LN, "Times Square");

function testLine(getOn, getOff) {
  for (var i = 0; i < Object.keys(subway).length; i++) {
    console.log(subway);
    console.log(subway[i]);
    // console.log(subway[i][getOn]);
  }
}


// console.log("There are ")
// console.log(Object.keys(subway).length)

getOn = "Times Square";



function findLine(station) { // returns array containing the lines that <station> is on
  var subwayLines = [];
  var stationLines = [];
  for (key in subway) {
    subwayLines.push(key);
  }
  // console.log(subwayLines);
  for (var i = 0; i < subwayLines.length ;i++) {
    // console.log(subway[subwayLines[i]]);
    var line = subway[subwayLines[i]];
    if (line.indexOf(station) >= 0) {
      console.log(subwayLines[i]);
      stationLines.push(subwayLines[i]);
    }
  }
console.log(stationLines);
return stationLines;
}



function checkMultiple(station) { // identifies whether station is on more than one line
  if (findLine(station).length > 1) {
    return true;
  } else {
    return false;
  }
}

// changes Union Square entry to indicate change if change is required.
function notSure(station) {
  if (checkMultiple(station)) {
    changeAlert();
  }
}

// change Union Square to Union Square - change here
function _changeAlert() {
  var subwayLines = [];
  for (key in subway) {
    subwayLines.push(key);
  }
  console.log("Yaroo");
  for (var i = 0; i < Object.keys(subway).length; i++) {
    console.log(subway[subwayLines[i]].indexOf("Union Square"));
    if (subway[subwayLines[i]].indexOf("Union Square") >= 0) {
      subway[subwayLines[i]][subway[subwayLines[i]].indexOf("Union Square")] = "Union Square - change here";
      console.log(subway[subwayLines[i]]);
    }
  }
  return subway;
}

// change Union Square - change here back to Union Square
function _subwayReset() {
  var subwayLines = [];
  for (key in subway) {
    subwayLines.push(key);
  }
  console.log("Yaroo");
  for (var i = 0; i < Object.keys(subway).length; i++) {
    if (subway[subwayLines[i]].indexOf("Union Square - change here") >= 0) {
      console.log(subway[subwayLines[i]].indexOf("Union Square - change here"));
      subway[subwayLines[i]][subway[subwayLines[i]].indexOf("Union Square - change here")] = "Union Square";
      console.log(subway[subwayLines[i]]);
    }
  }
  return subway;
}

// function checkMultiple(station, station) {
//
// }


// IF GETON AND GETOFF ARE IN THE SAME ARRAY, DO SAMELINE
// IF NOT, DO differentLines
//
//
//
//
// function masterCheck(var1, var2,) {
//   if x is in array and y is in array {
//     sameLine();
//   }
//   if x and y are not both in the same array {
//     differentLines();
//   }
// }

// var options = ["LN", "LL", "L6"];
// document.write("<select>");
// for (i = 0; i < options.length; i++) {
//   document.write("<option value=" + options[i] + ">" + options[i] + "</option>")
// }
//
// line = LN;
// document.write("<select>");
// for (i = 0; i < line.length; i++) {
//   document.write("<option value=" + line[i] + ">" + line[i] + "</option>")
// }
// document.write("</select>");


// "<option value=" + item + ">" + item + "</option>"
