console.log(lineN);
console.log(line6);
console.log(lineL);

function test1(line, getOn, getOff) { // how many stations between getting on and getting off?
  var yourLine = line;
  var youGotOn = yourLine.indexOf(getOn); // the
  var youGotOff = yourLine.indexOf(getOff);
  var numberOfStops = (youGotOff - youGotOn);
  console.log("You will have to make " + numberOfStops + " stops to get from " + getOn + " to " + getOff);
}

//Math.abs
