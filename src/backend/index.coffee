express = require 'express'
app = express()

app.set 'view engine', 'jade'
app.set 'views', "#{__dirname}/views"
app.use express.static "#{__dirname}/public"

app.get "/", (req, res)->
  res
   .status 200
   .send "Bonjour le monde!!"

app.get "/hello", (req, res)->
  res
   .status 200
   .render "index"

server = app.listen 3000, ->

  # host = server.address().address
  # port = server.address().port
  host = "localhost"
  port = 3000

  console.log "Example app listening at http://#{host}:#{port}"
 
 
