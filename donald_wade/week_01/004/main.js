// homework
// https://gist.github.com/wofockham/8ac3c1d747f345d89d3d

// create an object containing each line as an array.
var subway = {
  "LN" : ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square", "8th Avenue"],
  "LL" : ["8th Avenue", "6th Avenue", "Union Square", "3rd Avenue", "1st Avenue"],
  "L6" : ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"],
}

var error_message = "INPUT ERROR";

// this is the main driving function in program; it calls the other functions
function selectorFunction() {
  var lineOnInput = document.getElementsByName("getOnLine")[0].value;
  var lineOn = subway[lineOnInput];
  var lineOffInput = document.getElementsByName("getOffLine")[0].value;
  var lineOff = subway[lineOffInput];
  var getOn = document.getElementsByName("getOnStation")[0].value;
  var getOff = document.getElementsByName("getOffStation")[0].value;
  var subwayLines = createLineArray();
  var stationLines = [];

  if ((!checkStationExists(getOn)) || (!checkStationExists(getOff))) {
    alert("Station does not exist");
    return error_message;
  }
  console.log(getOn);
  checkStationExists(getOn);

  // check the station is actually on the line the user has selected
  if ((!checkStationOnLine(getOn, lineOnInput)) || (!checkStationOnLine(getOff, lineOffInput))) {
    return error_message;
  }
  // check the user has put in a line that actually exists
  if ((checkLineExists(lineOnInput) === false) || (checkLineExists(lineOffInput) === false)) {
    console.log("Line on input is " + lineOnInput);
    console.log("Line off inpuout is " + lineOffInput);
    return error_message;

  } else if (lineOn === lineOff) {
    sameLine(lineOnInput, getOn, getOff);
  } else {
    console.log("Two stations are on different lines");
    differentLines(lineOn, getOn, lineOff, getOff);
  }
}

function checkStationExists(station) {
  var subwayLines = createLineArray();
  var tally = 0;
  for (var i = 0; i < subwayLines.length; i++) {
    console.log(subway[subwayLines[i]]);
    console.log(subway[subwayLines[i]].indexOf(station));
    if (subway[subwayLines[i]].indexOf(station) >= 0) {
      tally ++;
    }
  }
  if (tally === 0) {
    console.log("Station does not exist")
    return false;
  } else {
    console.log("Station exists!")
    return true;
  }
}



// check the station the user has entered is on the line they've entered
function checkStationOnLine(station, line) {
  var subwayLines = createLineArray();
  var lineStations = subway[line];
  console.log(lineStations);
  console.log(lineStations.indexOf(station));
  if (lineStations.indexOf(station) < 0) {
    alert("Sorry, " + station + " isn't on the " + line + " line.");
    console.log("Sorry, " + station + " isn't on the " + line + " line.");
    return false;
  } else {
    return true;
  }
}

// handy function to create an array containing the keys in the subway object
function createLineArray() {
  var subwayLines = [];
  for (key in subway) {
    subwayLines.push(key);
  }
  return subwayLines;
}

// check the line entered actually exists
function checkLineExists(line) {
  var subwayLines = createLineArray();
  console.log(subwayLines);
  var lineToCheck = line;
  console.log(subwayLines.indexOf(lineToCheck));
  console.log(lineToCheck);
  if (subwayLines.indexOf(lineToCheck) < 0) {
    alert("You're trying to do something you can't. \n" +
    lineToCheck +
      " is not a train line in this city.");
    return false;
  } else {
    return true;
  }
}


// work out how many stops between one station and another on the same line
function sameLine(line, getOn, getOff, silent) {
  console.log("Line is " + line);
  // var getOn = document.getElementsByName("getOnStation")[0].value;
  console.log("Get on station is " + getOn);
  // var getOff = document.getElementsByName("getOffStation")[0].value;
  var yourJourney = []; // empty array
  var stationList = ""; // empty string
  var indexOn = line.indexOf(getOn); // index of geton station in station array
  console.log("Index of get on station is " + indexOn);
  var indexOff = line.indexOf(getOff); // index of getoff station in station array
  console.log("Get off station is " + getOff);
  console.log("Index off is " + indexOff);
  var stationCount = indexOff - indexOn; // number of stations is the difference between these two values
  console.log("Station count is " + stationCount);
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
  console.log("If negative, You're going backawards "+ stationCount);
  var stationCountAbs = Math.abs(stationCount);
  if (!silent) {
    console.log("Your journey will entail " + stationCountAbs + " stops.");

    console.log(stationList);
    document.getElementById('result').innerHTML +=    "<p>Your route is "
        + yourJourney +
        "</p>" +
        "<p>" +
        stationList +
        "</p>"

    return [stationCountAbs, yourJourney];

  } else {

    return [stationCountAbs, yourJourney];

  }
}


// work out how many (and which) stations between getting on and Union Square, and between Union Square and getting off. Add them together and concatenate arrays listing stops in order
function differentLines(lineOn, getOn, lineOff, getOff) {
  _changeAlert();
  // var lineOn = document.getElementsByName("getOnLine")[0].value;

  //  subway[document.getElementsByName("getOnLine")[0].value];

  var journeyWithChanges = "";
  console.log(sameLine(lineOn, getOn, "Union Square - change here", true),
  sameLine(lineOff, "Union Square - change here", getOff, true));
  var stationCount = sameLine(lineOn, getOn, "Union Square - change here", true)[0] + sameLine(lineOff, "Union Square - change here", getOff, true)[0];
  console.log("Station count is " + stationCount);
  console.log("First leg is " + sameLine(lineOn, getOn, "Union Square - change here", true)[1]);
  console.log("Second leg is " + sameLine(lineOff, "Union Square - change here", getOff, true)[1]);
  var stationListArray = [sameLine(lineOn, getOn, "Union Square - change here", true)[1].concat(sameLine(lineOff, "Union Square - change here", getOff, true)[1])];

  document.getElementById('result').innerHTML +=
    "<p>Your journey has " +
    stationListArray[0].length +
    " stops." +
    "<p>They are: </p>" +
    "<li class='stations'>" +
    getOn +
    " - get on here";

    for (var i = 0; i < stationListArray[0].length - 1 ; i++) {
      document.getElementById('result').innerHTML +=
      "<li class='stations'>" +
        stationListArray[0][i];
    }
    document.getElementById('result').innerHTML +=
      "<li class='stations'>" +
      getOff +
      " - get off here";

    console.log(stationListArray[0][i]);
    _subwayReset()
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
  if (checkMultiple(station))
    changeAlert();
  }
}

// change Union Square to Union Square - change here
function _changeAlert() {
  var subwayLines = [];
  for (key in subway) {
    subwayLines.push(key);
  }
  console.log("Changing Union Square to Union Square - chagne here");
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
  console.log("Changing Union Square - chagne here to Union Square");
  for (var i = 0; i < Object.keys(subway).length; i++) {
    if (subway[subwayLines[i]].indexOf("Union Square - change here") >= 0) {
      console.log(subway[subwayLines[i]].indexOf("Union Square - change here"));
      subway[subwayLines[i]][subway[subwayLines[i]].indexOf("Union Square - change here")] = "Union Square";
      console.log(subway[subwayLines[i]]);
    }
  }
  return subway;
}


/// ***** More stuff to play around with


function setUpLineDropDown(id) {
  var htmlFeed = "<select>";
  var lineOptions = []
  for (line in subway) {
    lineOptions.push(line);
  }
  console.log(lineOptions);
  console.log("<select>");
  for (var i = 0; i < lineOptions.length; i++) {
    htmlFeed +=
    "<option value='" +
    lineOptions[i] +
    "\'>" +
    lineOptions[i] +
    "</option>";
  }
  htmlFeed += "</select>";
  document.getElementById(id).innerHTML += htmlFeed;
}


function testLine(getOn, getOff) {
  for (var i = 0; i < Object.keys(subway).length; i++) {
    console.log(subway);
    console.log(subway[i]);
  }
}


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
