//2/10/2015
//https://gist.github.com/wofockham/8a702a9bf0a1456df7d4
//homework mta network

var N = ['N','Time Square','34th','28th','23rd','Union Square','8th'];
var L = ['L','8th','6th','Union Square','3rd','1st'];
var Line6 = ['6', 'GC','33rd','28th','23rd','Union Square','Astor Place'];

//function to find line array
//assume only three lines
function getLine(thisLine) {
    if (thisLine === 'N') {
        return N;
    } else if (thisLine === 'L') {
        return L;
    } else {
        return Line6;
    }
}

function getStopNames (thisLine, startStop, endStop) {
    var arrName = [];
    var arrLine = getLine(thisLine);
    var numStart = arrLine.indexOf(startStop);
    var numEnd = arrLine.indexOf(endStop);

    //get stop names, 
    //array.length >= 1, array store endStop
    if (numStart < numEnd) {  //train travels from left to right
        for (var i = numStart+1; i<=numEnd; i++) {
        arrName.push(arrLine[i]);
        }
    } else {  // if taking opposite direction
        for (var m= numStart-1; m>=numEnd; m--) {
        arrName.push(arrLine[m]);
        }
    }
    return arrName;
}

function planTrip(startLine, startStop, endLine, endStop) {
 var numStops = 0; 
 var result;  //take return message
 var arrStopName = []; //take list of stopover names
 var connectStop = 'Union Square';
 //user query summary:
 console.log("User wants to get on from Line",startLine,startStop,"and get off at Line",endLine,endStop);
    if (startLine === endLine) {  //if both stop on the same train line
        arrStopName = getStopNames(startLine,startStop,endStop);
        result = "Take Line " + startLine + " from station " + startStop 
        + " and stop at " + arrStopName.join(", ") + ", then get off at station " 
        + endStop + ". \nNumber of stops: " + arrStopName.length;
    } else {  //if switch trains
        arrStopName = getStopNames(startLine,startStop,connectStop); //start stop to connect station
        numStops = arrStopName.length;
        result = "Take Line " + startLine + " from station " + startStop 
        + " and stop at " + arrStopName.join(", ") + ". Get off at station " 
        + connectStop + " and change to Line " + endLine  +". ";
        arrStopName = getStopNames(endLine, connectStop, endStop);  //connect station to end stop
        numStops += arrStopName.length;
        result += "Take Line " +endLine + " " + connectStop + " and stop at "
        + arrStopName.join(", ") + ", then get off at station " +
        endStop + ". \nNumber of stops: " + numStops;
    }
    return "Instruction: " + result;
}

console.log (planTrip('6','Astor Place','N','Time Square'));