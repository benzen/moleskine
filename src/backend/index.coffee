express = require 'express'
app = express()

app.get "/", (req, res)->
  res.send(200, "Bonjour le monde!!")

server = app.listen 3000, ->

  # host = server.address().address
  # port = server.address().port
  host = "localhost"
  port = 3000

  console.log "Example app listening at http://#{host}:#{ports}"
 
