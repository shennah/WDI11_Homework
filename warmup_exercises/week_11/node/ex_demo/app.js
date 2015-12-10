var express = require('express');
var app = express();
var port = process.env.PORT || 3000;
var path = require('path');
var router = express.Router();

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

//between set and get

// Middelware
app.use(function(req, res, next) {
  console.log('%s request to %s from %s', req.method, req.path, req.ip);
  next();
});

// app.get('/', function(req, res){
//   console.log(req.method);
//   res.render('index');
// });

// app.get('/hello', function(req, res){
//   res.send("it's a hello page");
// });

router.get('/', function(req, res){
  res.render('index');
});

router.get('/contact', function(req, res) {
  res.render('contact', { header: 'contact!'});
});

router.get('/about', function(req, res) {
  res.render('about', { header: 'about!'});
});


app.use('/', router);
app.listen(port);
console.log("Listeninig to port: " + port);
