function maxOfTwoNumbers(num1, num2) {
  return Math.max(num1, num2);
}

function max2(num1, num2) {
  if (num1 > num2) {
    return num1;
  } else return num2;
}

function maxOfThree(num1, num2, num3) {
  if (num1 > num2 && num1 > num3) {
    return num1;
  } else if (num2 > num1 && num2 > num3) {
    return num2;
  } else return num3;
}


function vowelTest() {
  var vowels = "a e i o u".split(" ");
  var testVowel = prompt("Please enter your letter for vowel-testing");
  if (vowels.indexOf(testVowel) > -1) {
    return true;
  } else {
    return false;
  }
}


function numberArrayGen() {
  numbers = "1 2 3 4 5 6 7 8 9 11 12 23".split(" ");
  console.log(numbers);
  for (i = 0; i < numbers.length; i++) {
    numbers[i] = Number(numbers[i]);
  }
  console.log(numbers);
}

function sumArray(numbers) {
  var answer = 0;
  for (i = 0; i < numbers.length; i++){
    answer += numbers[i]
  }
  console.log(answer)
}

function multiplyArray(numbers) {
  var answer = 1;
  for (i = 0; i < numbers.length; i++){
    answer *= numbers[i]
  }
  console.log(answer)
}

function reverseString(string) {
  var stringArray = string.split("");
  console.log(stringArray);
  var stringRevArray = stringArray.reverse();
  var newString = stringRevArray.join("");
  console.log(newString);
}

var sentence = "here is a string that I want to turn into an array of words and then hopefully my function will manage to find the longest of the words and will then be able to return that word to the console. We shall see if it works or not."
var wordArray = sentence.split(" ");

function findLongestWord(wordArray) {
  var wordLengthArray = [];
  for (i = 0; i < wordArray.length; i++) {
    var wordLength = wordArray[i].length;
    wordLengthArray.push(wordLength);
  }
  console.log(wordLengthArray);
  var lengthOfLongestWord = Math.max.apply(this, wordLengthArray);
  var longestWordIndex = wordLengthArray.indexOf(lengthOfLongestWord);
  console.log(longestWordIndex);
  var longestWord = wordArray[longestWordIndex];
  console.log("The longest word in your array is \"" + longestWord + "\"");
  console.log("The word \"" + longestWord + "\" is " + longestWord.length + " characters long.")
}

function filterLongWords(wordArray, i) {
  var longerWords = [];
  for (j = 0; j < wordArray.length; j++) {
    if (wordArray[j].length > i) {
      longerWords.push(wordArray[j]);
    }
  }
  console.log(longerWords);
}
