var LN = ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square", "8th Avenue"];

var LL = ["8th Avenue", "6th Avenue", "Union Square", "3rd Avenue", "1st Avenue"]

var L6 = ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"]

function fromHereToUnionSq(line, station) {
  var yourJourney = []
  var yourLine = line;
  var yourIndex = yourLine.indexOf(station);
  yourJourney.push(yourLine[yourIndex + 1]);
  console.log(yourJourney);

  console.log(yourIndex);
  console.log(yourLine[yourIndex]);

  console.log(yourLine[(yourLine.indexOf(station)+1)]);
}

function basic(lineOn, getOn, lineOff, getOff){
  var yourJourney = [];
  var yourLine = lineOn;
  var tallyOfStops = fromHereToUnionSq(lineOn, getOn) + fromHereToUnionSq(lineOff, getOff);
  console.log(tallyOfStops);
  if (sameLine(lineOn, getOn, "Union Square") > 0) {
    console.log("You're going forwards.")
    yourJourney.push(yourLine[(yourLine.indexOf(getOn)+1)]);
    console.log(yourJourney);
  } else {
    console.log("You're going backwards.");
    yourJourney.push(yourLine[(yourLine.indexOf(getOn)-1)]);
    console.log(yourJourney);
  }
}

function sameLine(line, getOn, getOff) { // how many stations between getting on and getting off?
  var yourLine = line;
  var youGotOn = yourLine.indexOf(getOn); // the
  var youGotOff = yourLine.indexOf(getOff);
  var numberOfStops = (youGotOff - youGotOn);
  return numberOfStops;
  console.log("You will have to make " + numberOfStops + " stops to get from " + getOn + " to " + getOff);
}




function forwardsJourney(yourLine, gotOn) {
  var yourJourney = [];
  for (var i = 0; i < Math.abs(sameLine(yourLine, gotOn, "Union Square")); i++) {
    yourJourney.push(yourLine[i]);
    console.log(yourJourney[i]);
  }
}

// function backwardsJourney(yourLine, gotOn) {
//   var yourJourney = [];
//   for (var i = Math.abs(sameLine(yourLine, gotOn, "Union Square")) +1 ; i > 0; i--) {
//     yourJourney.unshift(yourLine[i]);
//     console.log(yourJourney[i]);
//   }
// }





function backwardsJourney(yourLine, gotOn) {
  var yourJourney = [];
  for (var i = Math.abs(sameLine(yourLine, gotOn, "Union Square")) + 1; i > 0; i--) {
    yourJourney.push(yourLine[i]);
    console.log(yourJourney[i]);
  }
}
