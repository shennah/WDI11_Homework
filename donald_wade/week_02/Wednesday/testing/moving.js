var spriteImage = document.getElementById("coinAnimation");


var left = 0;

// var coinSlide = setInterval(moveToRight, 50);

function moveToRight() {
  spriteImage.style.left = left + 'px';
  left += 10;
  var numericalPosition = parseInt(spriteImage.style.left);
  if (numericalPosition >= window.innerWidth - 100) {
    clearInterval(coinSlide);
    spriteImage.className += "flipped";
  }
}


// var coinSlip = setInterval(moveUp, 50);
//
// var height = window.innerHeight;

function moveUp() {
  spriteImage.style.top = height + 'px';
  height -= 10;
  var numericalPosition = parseInt(spriteImage.style.top);
  if (numericalPosition <=10) {
    clearInterval(coinSlip);
    spriteImage.className = "flipped";
  }
}



function upThenRight() {
  var height = window.innerHeight;
  var coinSlip = setInterval(moveUp, 50);
  function moveUp() {
    spriteImage.style.top = height + 'px';
    height -= 10;
    var numericalPosition = parseInt(spriteImage.style.top);
    if (numericalPosition <=10) {
      clearInterval(coinSlip);
      spriteImage.className = "flipped";

      var left = 0;

      var coinSlide = setInterval(moveToRight, 50);

      function moveToRight() {
        spriteImage.style.left = left + 'px';
        left += 10;
        var numericalPosition = parseInt(spriteImage.style.left);
        if (numericalPosition >= window.innerWidth - 100) {
          clearInterval(coinSlide);
          spriteImage.className += "flipped";
        }
      }
    }
  }
}

upThenRight();
