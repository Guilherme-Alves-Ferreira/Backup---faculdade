var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  port     : '3306',
  user: "rainbow6_bd",
  password: "urubu100",
  database : 'rainbow6'
});

con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    con.query(sql, function (err, result) {
      if (err) throw err;
      console.log("Result: " + result);
    });
  });

