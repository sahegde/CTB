var express = require('express');
var app = express();
var mysqlConnect = require('./mysqlConnect');
var bodyParser = require('body-parser');
var session = require('express-session');
var dbConnection = null;


app.use(session({secret: 'ssshhhhh'}));

// parse application/x-www-form-urlencoded 
app.use(bodyParser.urlencoded({ extended: false }));
 
// parse application/json 
app.use(bodyParser.json());

app.use(function(req,res,next) {
    console.log("Sand "+req.path);
    if(req.path === '/login') {
      return next();
    }

    if(!res.session.userAuthenticated) {
      console.log("User is already logged in: resuming his session");
      res.sendfile('./login.html');
    }else {
      console.log("User not loggin in: redirecting to login page");
      return next();
    }
  }
);

app.get('/', function (req, res) {
  console.log(req.foo+" fdsf "+JSON.stringify(req.session) );
  req.session = req.session || {};
  req.session.sand = 'sand';
  res.sendfile('./login.html');
});

app.get('/cartPage',function(req,res) {
  req.session = req.session || {};
  console.log(req.foo+" "+req.session.sand);
  res.sendfile('./cartPage.html');
});

app.get('/loginError',function(req,res) {
  res.sendfile('./loginError.html');
});

app.post('/login',function(req,res) {
    var query = 'SELECT * from users where user=\''+req.body.userid+'\' and password=\''+req.body.password+'\' and type=\''+req.body.type+'\'';
    console.log("The query is "+query);
    dbConnection.query(query, function(err, rows, fields) {
      if (err) {
        console.log("There was an error while logging in the user ");
        dbConnection.end();
        res.redirect('/loginError');
      }
      if(rows.length > 0) {
        console.log("Valid user of type: "+req.body.type);
        res.session.userAuthenticated = true;
        res.redirect('/cartPage');
      }else {
        console.log("Not a valid user");
        res.redirect('/loginError');
      }
    });
});

var server = app.listen(3000, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);

  console.log("Trying to connect to mysql db");
  dbConnection = mysqlConnect();

});

