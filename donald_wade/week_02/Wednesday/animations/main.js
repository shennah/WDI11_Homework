var coinImage = new Image();
coinImage.src = "images/coin-sprite-animation.png";

function sprite(options) {

  var that = {},
    frameIndex = 0,
    tickCount = 0,
    ticksPerFrame = ticksPerFrame || 0,
    // ticksPerFrame = 0;
    numberOfFrames = options.numberOfFrames || 1;

  that.context = options.context;
  that.width = options.width;
  that.height = options.height;
  that.image = options.image;

  that.render = function() {
    //clear the canvas
    context.clearRect(0, 0, that.width, that.height);

        // Draw the animation
        that.context.drawImage(
           that.image,
           frameIndex * that.width / numberOfFrames,
           0,
           that.width,
           that.height,
           0,
           0,
           that.width / numberOfFrames,
           that.height);
  };

  that.loop = options.loop;

  that.update = function() {

    tickCount ++;

    if (tickCount > ticksPerFrame) {
      tickCount = 0;
      // if the current frame index is in range
      if (frameIndex < numberOfFrames - 1) {
        // go to the next frame
        frameIndex ++;
      } else if (that.loop) {
        frameIndex = 0;
      }
    }
  };
    return that;
}

var canvas = document.getElementById("coinAnimation");
canvas.width = 100;
canvas.height = 100;

var coin = sprite({
  context: canvas.getContext("2d"),
  width: 100,
  height: 100,
  image: coinImage
});

function gameLoop() {
  window.requestAnimationFrame(gameLoop);
  coin.update();
  coin.render();
}

coinImage.addEventListener("load", gameLoop);





// frameIndex current frame to be displayed
// tickCount updates since the current frame was first displayed
// ticksPerFrame this number updates till the next frame should be displayed
