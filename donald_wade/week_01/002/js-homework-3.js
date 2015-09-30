var word = "poultry";
var wordLetters = word.split("");
var guessedLetters = [];
var rewardAmount = 0;
var stake;
var tallyOfDoom = 0;

// nice things to do:
// allow repeat letters in the word (I don't think it does that at the moment)
// allow phrases
// put all letters into lowercase for testing

function guessLetter(letter) {
  stake = Math.floor((Math.random() * 1000) + 1); // generate a random number between 1 and 1000
  if ((wordLetters.indexOf(letter) > -1) && (guessedLetters.indexOf(letter) > -1)) {
    console.log("Cool, but you've already chosen that letter!!");
  } else if (wordLetters.indexOf(letter) > -1) {
    console.log("You got a letter right!");
    guessedLetters.push(letter);
    tallyOfDoom -= 1;
    // console.log("the stake is " + stake);
    var winning = stake * guessedLetters.length;
    // console.log("the winning is " + winning);
    rewardAmount += winning;
    // console.log(rewardAmount, typeof(rewardAmount));
    console.log("Your winnings are $" + rewardAmount);
    if (guessedLetters.length === wordLetters.length) {
      console.log("You've guessed all the letters. Congratulations!! You've won the princely sum of $" + rewardAmount + ". The cheque is in the post. Don't call me.");
    }
  } else {
    console.log("Bummer! The letter \"" + letter + "\" isn't in the word. Try again...");
    rewardAmount -= stake;
    tallyOfDoom++;
    if (tallyOfDoom > 6) {
      console.log("I'm terribly sorry, but you've run out of chances. You owe me $" + (rewardAmount * -1) + ". Better pay up, Sunshine.");
      return "GAME OVER";
    }
    console.log("Your winnings are $" + rewardAmount);
  }
}
