
//create an empty array
var toys = [];

//create an array with values
var cars = ["Honda", "Mazda", "BMW"];

//get first element from array
cars[0]; //return "Honda"

//get last element from the array
cars[cars.length - 1];//return "BMW"

//create an array from the string
var wdi11 = "Eric Shennah Andrew Yilan Donald Charley Daisy Michael";
var ourGroup = wdi11.split(" ");
console.log(ourGroup);
//returns "Eric", "Shennah", "Andrew", "Yilan", "Donald", "Charley", "Daisy", "Michael"

for(var index = 0; index < ourGroup.length; index++){
  console.log("Hello ", ourGroup[index]);
}

//reset first element in our array
ourGroup[0] = "EriCCC";

console.log(ourGroup);

//get last element from the array
ourGroup.pop(); //return "Michael"

//get first element from the array
ourGroup.shift(); //return "Eric"

//add the element to the end of the array
ourGroup.push("New Student");

//add the element to the start of the array
ourGroup.unshift("First Student");

//reverse the order of the array
ourGroup.reverse();

//find the element in the array, ll return index number of the element
ourGroup.indexOf("Yilan");
//if element doesn't exist in the array will return -1

