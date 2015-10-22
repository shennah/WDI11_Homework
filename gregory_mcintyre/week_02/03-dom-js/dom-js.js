//----------------------------------------------------------------------
// Make a change to the DOM each time I click this link

function onClick(mouseEvent) {
  console.log(mouseEvent); // interesting to poke around at event objects!
  var targetButton = mouseEvent.target; // the element that was clicked
  targetButton.innerHTML += " more";

  mouseEvent.preventDefault(); // don't do the normal clicking link behaviour (visiting a new URL)
}
document.getElementById("increment").addEventListener("click", onClick);

// NB: the difference between onClick and onClick()
//
// onClick is a variable name. As an expression, it evaluates to a function definition.
//
// The code above says: "Hey web browser, here, call this function when somebody clicks this link!"
//
// onClick() as an expression calls the function and leaves you with its return value. In this case,
// we don't call return in our function so it'll be undefined.
//
// element.addEventListener("click", onClick); // good
// element.addEventListener("click", onClick()); // bad
//

//----------------------------------------------------------------------
// Make a button move right and then stop

var button = document.getElementsByTagName("button")[0];
button.style.position = "absolute";
var left = 10;
button.style.top = '5px';
button.style.left = left + 'px';
function onTimeout() {
  button.style.left = left + "px"; // set its offset from the left of its parent
  left += 10; // by adding 10, it will move right 10 pixels each frame of animation
  if (left > 30) { // stop once it's offset by at least 30 pixels
    clearInterval(interval);
  }
}
var interval = setInterval(onTimeout, 1000);


//----------------------------------------------------------------------
// Gallery fade out effect

var gallery = document.getElementsByClassName("gallery")[0];
function fadeAway() {
  gallery.style.opacity = gallery.style.opacity - 0.1;
}
gallery.style.opacity = 1.0;
setInterval(fadeAway, 20);
