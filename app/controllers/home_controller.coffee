load 'application'


action 'index', ->
  if req.user
    redirect '/me'
  else
    render
      title: "Mail to audio"

action 'me', ->
  unless req.user 
    redirect '/'

  do render

action 'changeemail', ->
  unless req.user 
    redirect '/'
  req.user.email = req.body.email
  do req.user.save
  redirect 'me'