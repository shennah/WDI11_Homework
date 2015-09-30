var s = "fantastic"; //word to be guessed
var w=s.split('');
var guessedW=[];
var found;
var userGuess = "abcdefghijklmnopqrstuvwxyz".split('');

//populate guessed array
for (var i = 0; i < w.length; i++) {
    guessedW.push('_');
}

function guessLetter(l) {
    if (w.indexOf(l)===-1) {
        return l + " is not found, guess again.";
    } else {
        for (var x=0;x<w.length;x++) {
            if(w[x]===l) {
                guessedW[x]=l;
            }
        }
        return l + " is found";
    }
}

for (var i =0; i<userGuess.length; i++) {
   console.log(guessLetter(userGuess[i]));
    if (w.join() === guessedW.join()) {
        console.log("congrats");
        console.log(guessedW.join());
        break;
    } 
    console.log(guessedW.join());
}
    


