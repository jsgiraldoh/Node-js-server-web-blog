//var Express=require('express');
//var app=Express();
//app.get('/',function(req,res){
//    res.send('Hello World (from Docker!)');
//});
//app.listen(8080);
const express = require('express');
const app = express();

app.use(express.static(__dirname + '/public/'));

app.listen('8080', function() {
  console.log('Servidor web escuchando en el puerto 8080');
});
