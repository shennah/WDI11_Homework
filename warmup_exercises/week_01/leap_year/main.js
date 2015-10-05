//evenly devisible by 4
//exclude numbers devisible by 100
//unless they devisible by 400

function isLeapYear(year){

  if((year % 4 === 0) && (year % 100 !== 0 || year % 400 === 0)){
    console.log(year + " is a leap year");
  } else {
    console.log(year + " is not a leap year");
  }

}

isLeapYear(1997);//false
isLeapYear(1996);//true
isLeapYear(1900);//false
isLeapYear(2000);//true
