// Generated by CoffeeScript 1.3.3
(function() {
  var oauthLogin;

  oauthLogin = function(link) {
    return window.open(link, 'Login', 'height=400,width=500', false);
  };

  $(document).ready(function() {
    return $('[role="login-link"]').click(function() {
      oauthLogin($(this).attr('href'));
      return false;
    });
  });

}).call(this);