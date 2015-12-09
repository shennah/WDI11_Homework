
var express = require('express');
var expressWs = require('express-ws');

var app = express();

expressWs(app); // enable WS on our express app

app.get('/', function(req, res, next){
  res.sendFile(__dirname + '/index.html');
});

var clients = [];

app.ws('/', function(socket, req) {
	console.log('Connection accepted');

	clients.push(socket); // will use later for broadcast

	socket.on('message', function(message){
		console.log('Received: ' + message);

		// broadcast message to all sockets
		for (var i = 0; i < clients.length; i++) {
			var sock = clients[i];
			sock.send(message);
		}
	});

	socket.on('close', function(code) {
		console.log(new Date() + ' Disconnect: ' + code);
		for(var i = 0; i < clients.length; i++) {
			if(clients[i] == socket) {
				clients.splice(i);
				break;
			}
		}
	});
});

app.listen(8000);