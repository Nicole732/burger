var express = require("express");
var exphbs = require("express-handlebars");
var mysql = require("mysql");

var app = express();

// Set the port of our application
// process.env.PORT lets the port be set by Heroku
var PORT = process.env.PORT || 8080;

// Parse request body as JSON
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root@2020",
  database: "burgers_db"
});

connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
});

app.get("/", function(req,res){
    connection.query("SELECT * FROM burgers",function(err, result){
      if (err) throw err;

    res.render("index", {output: result});
    });
});

app.post("api/burgers/", function(req,res){
const newBurger = req.body.name;
connection.query("INSERT INTO burgers SET ?", [newBurger], function(err,createdBurger){
    if (err) throw err;
    res.redirect("/");
})

})

//update the burger to set to devour to true on click of devour it button










app.listen(PORT, function(){
    // Log (server-side) when our server has started
    console.log("Server listening on: http://localhost:" + PORT);
  });