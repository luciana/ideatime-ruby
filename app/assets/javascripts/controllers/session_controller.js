app.controller("SessionController", function($scope, sessionData){
  $scope.signIn = function(user, idea){
  	console.log('signin');  	
    $scope.idea = idea;
	sessionData.signIn(user);
	$('#loginModal').modal('hide');
  };

  $scope.signOut = function(user){
  	console.log('signout');
    sessionData.signOut(user);
  };
});