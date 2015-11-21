'use strict';

var productsModel = require('../models/cartPage');
var dbConnection = require('../lib/dbConnect');

module.exports = function (router) {

	router.get('/', function (req, res) {
	  req.session = req.session || {};
	  req.session.sand = 'sand';
	  res.render('login',{}	);
	});

	router.get('/cartPage',function(req,res) {
	  new productsModel(function(products) {
		  req.session = req.session || {};
		  res.render('cartPage',products);
	  });
	});

	router.get('/loginError',function(req,res) {
	  res.send('loginError');
	});

	router.get('/addToCart',function(req,res) {
		var query = 'INSERT INTO userCart SET ?';
		var obj = {"userId": req.session.userId,"productId": parseInt(req.query.productId)};
		console.log("Obj is "+JSON.stringify(obj));
		dbConnection.query(query,{userId: req.session.userId,productId: parseInt(req.query.productId)},function(err, rows) {
	      if (err) {
	        console.log("There was an error while logging in the user ");
	        res.redirect('/loginError');
	      }else {
	      	console.log("Added to cart");
	      	res.send("added");
	      }
	  	});
	});

	router.get('/viewCart',function(req,res) {
		var query = "select p.id,p.name,p.price from userCart uc, product_list p where uc.productId = p.id";
		dbConnection.query(query,function(err, rows) {
	      if (err) {
	        console.log("There was an error while logging in the user ");
	        res.redirect('/loginError');
	      }else {
	      	console.log("Items in cart "+JSON.stringify(rows));
	      	res.send({"products":rows});
	      }
	  	});
	});

	router.post('/login',function(req,res) {
	    var query = 'SELECT * from users where user=\''+req.body.userid+'\' and password=\''+req.body.password+'\' and type=\''+req.body.type+'\'';
	    console.log("The query is "+query);
	    dbConnection.query(query, function(err, rows, fields) {
	      if (err) {
	        console.log("There was an error while logging in the user ");
	        res.redirect('/loginError');
	      }
	      if(rows && rows.length > 0) {
	        console.log("Valid user of type: "+req.body.type+" pradeep "+JSON.stringify(rows));
	        req.session.userAuthenticated = true;
	        req.session.userId = rows[0].id;
	        res.redirect('/cartPage');
	      }else {
	        console.log("Not a valid user");
	        res.redirect('/loginError');
	      }
	    });
	});

};
