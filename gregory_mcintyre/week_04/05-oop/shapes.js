var square = {
	type: 'square',
	sides: 4,
	colour: 'red',
	draw: function() {
		console.log('[ ]');
		this.sides;
	}
};

var triangle = {
	type: 'triangle',
	sides: 3,
	colour: 'yellow',
	draw: function() {
		console.log('/\\');
	}
}

var drawShape = function (shape) {
	shape.draw();
}

var printSides = function (shape) {
	console.log(shape.sides);
}

