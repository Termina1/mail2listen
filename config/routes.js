exports.routes = function (map) {

    // Generic routes. Add all your routes below this line
    // feel free to remove generic routes
    map.root('home#index');
    map.get('me', 'home#me');
    map.post('me', 'home#changeemail');
    map.all(':controller/:action');
    map.all(':controller/:action/:id');
};
