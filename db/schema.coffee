User = define 'User', ->
  property 'email', String, index: true
  property 'first_name', String
  property 'last_name', String

Oauth = define 'Oauth', ->
  property 'oauth_id', Number
  property 'oauth_token', String
  property 'type', String

User.hasMany Oauth, as: 'links', foreignKey: 'userId'
Oauth.belongsTo User, as: 'user', foreignKey: 'userId'