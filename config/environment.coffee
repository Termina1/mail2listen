express = require 'express'
require './initializers/everyauth'

app.configure ->
    cwd = process.cwd()
    app.set 'view engine', 'jade'
    app.set 'view options', complexNames: true
    app.enable 'coffee'

    app.use express.static(cwd + '/public', maxAge: 86400000)
    app.use express.bodyParser()
    app.use express.cookieParser 'secret'
    app.use express.session secret: 'secret'
    app.use app.everyauth.middleware()
    app.use express.methodOverride()
    app.use app.router

