var s = "fantastic"; //word to be guessed
var w=s.split('');
var guessedW=[];
var userGuess = "abcdefghijklmnopqrstuvwxyz".split('');
var reward = 0; //reward balance
var NumRepeat = 0; //char repeat in the word

//populate guessed array
for (var i = 0; i < w.length; i++) {
    guessedW.push('_');
}

function guessLetter(l) {
    var rand = parseFloat(Math.random()*100).toFixed(0);
    if (w.indexOf(l)===-1) {
        reward = reward - rand;
        return l + " is not found, guess again.";
        
    } else {
        for (var x=0;x<w.length;x++) {
            if(w[x]===l) {
                guessedW[x]=l;
                NumRepeat = NumRepeat +1;
            }
        }
        reward = reward + rand*NumRepeat;
        NumRepeat = 0;
        return l + " is found";
    }
}

for (var i =0; i<userGuess.length; i++) {
   console.log(guessLetter(userGuess[i]));
   console.log("Reward Balance: $" + reward);
    if (w.join() === guessedW.join()) {
        console.log("congrats");
        console.log(guessedW.join());
        break;
    } 
    console.log(guessedW.join());
}
    


