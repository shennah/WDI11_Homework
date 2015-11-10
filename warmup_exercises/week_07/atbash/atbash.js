// "abcdefghijklmnopqrstuvwxyz"
// "zyxwvutsrqponmlkjihgfedcba"
// Encoding "test" gives "gvhg"
// Decoding "gvhg" gives "test"


var LETTERS = "abcdefghijklmnopqrstuvwxyz";
var REVERSED_LETTERS = LETTERS.split('').reverse().join('');

console.log("Letters: \n", LETTERS);
console.log("Reversed letters: \n", REVERSED_LETTERS);

//a function that encode 1 letter
var findLetter = function(letter){
  var indexOfLetter = LETTERS.indexOf(letter);
  return REVERSED_LETTERS.charAt(indexOfLetter);
}

var encode = function(text){

  //text = text.toLowerCase();
  text = Array.from(text.toLowerCase());
  var transformedText = "";

  // for(var i = 0; i < text.length; i++){
  //   var indexOfLetter = LETTERS.indexOf(text[i]);
  //   var reversedLetter = REVERSED_LETTERS.charAt(indexOfLetter);
  //   transformedText += reversedLetter;
  // }

  //using map in sace of practice. Map(like a for loop) goes through our text and for each single element in array(letter) and use findLetter function on it, encoding 1 single letter and then in the end we just join them together
  transformedText = text.map(findLetter).join('');

  console.log(transformedText);
  return transformedText;
}

//we can use 1 function to encode and decode words
var encoded = encode("test");
var decoded = encode(encoded);






