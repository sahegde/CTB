var initializeDb = function() {
	var mysql      = require('mysql');
	var connection = mysql.createConnection({
	  host     : 'localhost',
	  user     : 'root',
	  password : '',
	  database : 'test'
	});

	connection.connect();

	return connection;
};

var connectionObj = initializeDb();

module.exports = connectionObj;