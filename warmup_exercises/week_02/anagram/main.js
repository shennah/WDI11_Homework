var anagramArray = ["enlists", "google", "inlets", "banana", "tslein"];

var sortAlphabetically = function (word){
  return word.split("").sort().join("");
}

// var findAnagram = function (word, ourArray){

//   var alphabeticWord = sortAlphabetically(word);

//method map is iterating through the array same as for loop, and it does some method on each element. You specify this method in a parantathes. So it goes through each element and transform ir alphabetically.

//   var alphabeticArray = ourArray.map(sortAlphabetically);
//   var indexOfWord = alphabeticArray.indexOf(alphabeticWord);

//   if(indexOfWord >= 0){
//     return ourArray[indexOfWord];
//   } else {
//     return "There is no such word!";
//   }
// }

// console.log(findAnagram("listen", anagramArray));

var findAllAnagrams = function (word, ourArray){
  var alphabeticWord = sortAlphabetically(word);
  //method filter is iterating through each element in the array and filter it according to conditions you pass in parantathes. If condition is true it leaves element in the array, if false - kicks it out.
  var ourNewArray = ourArray.filter(function(element){
    return sortAlphabetically(element) === alphabeticWord;
  });

  return ourNewArray.toString();
}

console.log(findAllAnagrams("listen", anagramArray));








