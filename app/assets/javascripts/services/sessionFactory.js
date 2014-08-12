app.factory('sessionData', function($resource){
   return {
        signOut: function(user) {
			var resource = $resource('/api/v1/signout');
            return resource.save();
        },
		signIn: function(user){
			var resource = $resource('/api/v1/auth/website/callback',{provider: '@provider'});
           return resource.save(user);
        }
    };
});