function DrEvil(n) {
    if (n === 1000000) {
        return n + " dollars (pinky)";
    } else {
        return n + " dollars";
    }
}
console.log(DrEvil(10));
console.log(DrEvil(1000000));

function mixUp(x, y) {
    var a, b;
    return y.slice(0,2) + x.slice(2,x.length) + " " + x.slice(0,2) + y.slice(2,y.length);
}
console.log(mixUp("mix", "pod"));
console.log(mixUp('dog','dinner'));

function fixStart(a) {
    var c,d, e;
    c = a.charAt(0);
    d = a.substr(1,a.length);
    e = d.replace(/b/g,"*"); //what doesn /b/g mean?
    return c + e;
}

console.log(fixStart("babble"));

function verbing(a) {
    if (a.length < 4) {
        return a;
    } else {
        if (a.substr(-3,3) === "ing") {
            return a + "ly";
        } else {
            return a + "ing";
        }
    }
}

console.log(verbing("go"));

function notBad(t) {
    var s;
    s = t.replace(/not|bad/g,"good");
    return s;
    
}

console.log (notBad("This dinner is not that bad!"));






