
//////////////////
var img = document.getElementsByTagName('img')[0];

img.style.left = '0px';

var walkForwards = true; // new variable walk forwards

function mokDance() {
  var left = parseInt(img.style.left); // assigns to left variable
  
  if (walkForwards && (left > (window.innerWidth-img.width))) {
    walkForwards = false; // when img hits end of screen, var becomes false
  }
  if (!walkForwards && (left <= 0)) { 
    walkForwards = true; // if not walking forwards and left hits 0px (very lef of screen), walkingForwards become true and instructions below continues
  }
  
  if (walkForwards) {
    img.style.left = (left + 10) + 'px'; // move across screen 10 px at a time
  } else {
    img.style.left = (left - 10) + 'px'; // if not walking forward, go backwards by 10 pixels at a time
  }

}
window.setInterval(mokDance, 50);


var snoop = document.getElementsByTagName('img')[1];

snoop.style.left = '100px';

var walkForwards = true; // new variable walk forwards

function snoopDance() {
  var left = parseInt(snoop.style.left); // assigns to left variable
  
  if (walkForwards && (left > (window.innerWidth-snoop.width))) {
    walkForwards = false; // when img hits end of screen, var becomes false
  }
  if (!walkForwards && (left <= 0)) { 
    walkForwards = true; // if not walking forwards and left hits 0px (very lef of screen), walkingForwards become true and instructions below continues
  }
  
  if (walkForwards) {
    snoop.style.left = (left + 10) + 'px'; // move across screen 10 px at a time
  } else {
    snoop.style.left = (left - 10) + 'px'; // if not walking forward, go backwards by 10 pixels at a time
  }

}
window.setInterval(snoopDance, 50);

