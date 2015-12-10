

var catGif = document.getElementsByTagName("img")[0];

catGif.style.left = 0;


function forwardThenBackWards() {

}
// setInterval(catWalkBackwards, 50);



var left = 0;

function infiniteCatWalk() {
  catGif.style.left = left + 'px';
  console.log(catGif.style.left);
  left += 10;
  var numericalPosition = parseInt(catGif.style.left);
  console.log(numericalPosition);
  if (numericalPosition >= window.innerWidth - 296) {
    left = 0;
  }
}

// setInterval(FWBW, 50);

function FWBW() {
  catGif.style.left = left + 'px';
  console.log(catGif.style.left);
  left += 10;
  var numericalPosition = parseInt(catGif.style.left);
  console.log(numericalPosition);
  if (numericalPosition >= window.innerWidth - 296) {
    console.log(fromRight);
    catGif.className = "cat";
    catGif.style.left = fromRight + 'px';
    console.log(catGif.style.left);
    fromRight -= 10;
    catGif.style.left = fromRight + 'px';
    console.log(fromRight);
    var numericalPosition = parseInt(catGif.style.left);
    console.log(numericalPosition);
    console.log(catGif.style.left);
    if (numericalPosition <= 10) {
      console.log("Kaboom");
      left = 0;
      fromRight = window.innerWidth - 296;
      catGif.className = "";

    }
  }
}


function basicCatWalk() {
  catGif.style.left = left + 'px';
  console.log(catGif.style.left);
  left += 10;
  var numericalPosition = parseInt(catGif.style.left);
  console.log(numericalPosition);
  if (numericalPosition >= window.innerWidth - 296) {
    clearInterval(walkingForwards);
  }
}

function catMoonWalk() {
  catGif.style.left = left + 'px';
  console.log(catGif.style.left);
  left += 10;
  var numericalPosition = parseInt(catGif.style.left);
  console.log(numericalPosition);
  if (numericalPosition >= window.innerWidth - 296) {
    left -= 10;
  }
}

var fromRight = window.innerWidth - 296;
function catWalkBackwards() {
  console.log(fromRight);
  catGif.style.left = fromRight + 'px';
  console.log(catGif.style.left);
  fromRight -= 10;
  catGif.style.left = fromRight + 'px';
  console.log(fromRight);
  var numericalPosition = parseInt(catGif.style.left);
  console.log(numericalPosition);
  console.log(catGif.style.left);
  if (numericalPosition <= 10) {
    console.log("Kaboom");
    clearInterval(walkingBackWards);
  }
}


setInterval(FWBW, 100);

var imageOfCat = document.getElementsByTagName("img")[0];

var catPicture = "http://www.anniemation.com/clip_art/images/cat-walk.gif"


var dancingPicture ="http://img.photobucket.com/albums/v245/mad3963/bengals_logo.gif"

function dancingWalking() {
  catGif.style.left = left + 'px';
  console.log(catGif.style.left);
  left += 10;
  var numericalPosition = parseInt(catGif.style.left);
  console.log(numericalPosition);
  if (numericalPosition >= (window.innerWidth / 2 - 148)) {
    console.log("Bazooka");
    imageOfCat.src = dancingPicture;
  }
  if (numericalPosition >= window.innerWidth - 296) {
    catGif.className="cat";
    console.log(fromRight);
    // catGif.style.left = fromRight + 'px';
    console.log(catGif.style.left);
    fromRight -= 10;
    catGif.style.left = fromRight + 'px';
    console.log(fromRight);
    var numericalPosition = parseInt(catGif.style.left);
    console.log(numericalPosition);
    var halfWidth = (window.innerWidth / 2 + 148 - 296);
    if (numericalPosition <= halfWidth) {
      console.log("loooooLOOOOOO");
      imageOfCat.src = catPicture;
    }
    if (numericalPosition <= 10) {
      console.log("Kaboom");
      left = 0;
      fromRight = window.innerWidth - 296;
      catGif.className="";
    }
  }
}
