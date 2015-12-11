var robot = robot || {};

robot.initBoard = function(el, cellWidth, window) {
  var robot = {
    directionOffset: {
      left: -1,
      right: +1
    },

    directionPositionDelta: [
      [+1, 0], // 0 - east
      [0, +1], // 1 - south
      [-1, 0], // 2 - west
      [0, -1], // 3 - north
    ],

    position: [0, 0],

    direction: 0,

    turn: function(dir) {
      this.direction = (
        this.direction
          + this.directionOffset[dir]
          + this.directionPositionDelta.length
      ) % this.directionPositionDelta.length;
    },

    advance: function() {
      var delta = this.directionPositionDelta[this.direction];
      this.position[0] += delta[0];
      this.position[1] += delta[1];
    }
  };

  var board = {
    w: 0,
    h: 0,
    resetSize: function() {
      this.w = el.offsetWidth / cellWidth;
      this.h = el.offsetHeight / cellWidth;
    }
  };

  el.setAttribute('class', 'robot-board');

  var robotDiv = document.createElement('div');
  robotDiv.setAttribute('class', 'robot');
  el.appendChild(robotDiv);

  board.resetSize(); // initial size
  window.addEventListener('resize', board.resetSize); // reset on window resize

  var dirClass = [
    'east',
    'south',
    'west',
    'north'
  ];

  var advanceRobot = function() {
    robot.advance();
    robot.position[0] = Math.min(robot.position[0], board.w - 1);
    robot.position[1] = Math.min(robot.position[1], board.h - 1);
    robot.position[0] = Math.max(0, robot.position[0]);
    robot.position[1] = Math.max(0, robot.position[1]);
  };

  var setRobotPosition = function() {
    robotDiv.style.left = robot.position[0] * cellWidth + 'px';
    robotDiv.style.top = robot.position[1] * cellWidth + 'px';
    robotDiv.setAttribute('class', 'robot ' + dirClass[robot.direction]);
  };

  setInterval(function(){
    var r = Math.random();
    if (r < 0.2) {
      robot.turn('left');
    } else if (r > 0.8) {
      robot.turn('right');
    }
    advanceRobot();
    setRobotPosition();
  }, 200);
};
