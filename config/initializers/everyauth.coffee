util = require 'util'
everyauth = require 'everyauth'
Promise = everyauth.promise
everyauth.everymodule.findUserById (userId, callback) ->
  app.models.User.find userId, (err, data) -> callback(false, data)

everyauth.everymodule.userPkey = 'id'

everyauth.helpExpress(app);

everyauth.vkontakte
  .appId('2960365')
  .appSecret('ZDH2evzHpm4pqDw1Vwsd')
  .scope(8)
  .findOrCreateUser((data, token, ids, userData) -> 
    promise = this.Promise()
    app.models.User.fromEveryAuthVk token, userData, promise
  )
  .redirectPath('/')
    

app.everyauth = everyauth