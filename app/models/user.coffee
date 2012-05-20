
User.fromEveryAuthVk = (token, userData, promise) =>
  Oauth.all where:(oauth_id: userData.uid), (err, result) ->
    if result.length > 0
      result[0].user (err, user) ->
        promise.fulfill user
    else
      u = new User userData
      u.save (result) ->
        u.links
        .build(type: 'vkontakte', oauth_token: token, oauth_id: userData.uid)
        .save()
      promise.fulfill u

  promise