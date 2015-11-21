'use strict';

var dbConnection = require('../lib/dbConnect');

module.exports = function productsModel(next) {
	var query = 'SELECT * from product_list';
    console.log("The query is "+query);
    dbConnection.query(query, function(err, rows, fields) {
    	console.log("products fetched are : "+JSON.stringify(rows));
    	return next({"products" : rows});
    });
};
