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





for (i = 0; i < Math.abs(sameLine(L6, "Grand Central", "Union Square")); i++) {
  console.log(i);
}


// what does this tell you???
// cycles through each of the stations

for (var i = 0; i < Math.abs(sameLine(yourLine, gotOn, "Union Square")); i++) {
  yourJourney.push(yourLine[i]);
  console.log(yourLine[i]);
}
