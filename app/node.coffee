express = require 'express'
app = express()
app.configure( () ->
  app.set('views', __dirname + '/views')
  app.set('view engine', 'twig')
)

app.get '/', (req, res) ->
  res.render('index.html.twig', {
    variable : 'Super duper Twig variable'
  })

app.listen 3666