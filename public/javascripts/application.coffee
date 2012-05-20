oauthLogin = (link) ->
  window.open(link, 'Login', 'height=400,width=500', false);

$(document).ready ->
  $('[role="login-link"]').click ->
    oauthLogin $(@).attr 'href'
    false