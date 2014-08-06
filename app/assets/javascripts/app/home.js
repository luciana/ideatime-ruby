var app = angular.module("Home",[]);

app.controller("IdeaController", ['$http', '$scope', function($http, $scope){

 //GET IDEAS
  $scope.ideas = {};
   $http.get('/api/v1/ideas.json').success(function(data){ 
    console.log("load ideas");
      console.log(data);
      $scope.ideas = data;
   });
  //POST IDEA  
  $scope.addIdea= function(idea, user){ 
    console.log("add idea");
    console.log(idea);
    console.log(user);
    var data = {description: idea.description, display: idea.display, user_id: user};
    console.log(data);
    $http({
      url: "/api/v1/ideas",
      method: "POST",
      data: data,
      headers: {'Content-Type': 'application/json'}
    }).success(function(postData){
      $http.get('/api/v1/ideas.json').success(function(data){     
        $scope.ideas = data;  
        console.log("added idea");
        $('#loginModal').modal('hide');        
      });    
    });
    $scope.idea = {};
  };

  $scope.validate = function(idea){
   if(idea){
    $(".alert").removeClass('show').addClass('hide');
     $('#loginModal').modal();
     $scope.idea = {};
   }else{
    $(".alert").removeClass('hide').addClass('show');
    $(".alert").alert('show');
    return false;
   }
  };
}]);

app.controller("UserController", ['$http', '$scope', function($http, $scope){
  console.log("load user");
  $scope.createAccount = function(user, idea){
    var data = {name: user.name, email: user.email, provider: "website"};
    $http({
      url: "/auth/website/callback",
      method: "POST",
      data: data,
       headers: {'Content-Type': 'application/json'}
    }).success(function(postData){
        console.log(postData);
        $scope.user = postData;
        $scope.addIdea(idea);
    });
  };

}]);

app.controller("CommentController", ['$http','$scope', function($http,$scope){
  console.log("load comments");
 $scope.comment = {};   
	$scope.addComment= function(idea, comment) {   
		var data = {body: comment.body, stars:comment.stars, idea_id: idea.id};
    $http({
      url: "/api/v1/comments",
      method: "POST",
      data: data,
      headers: {'Content-Type': 'application/json'}
    }).success(function(postData){      
      $http.get('/api/v1/comments/'+postData.id).success(function(data){               
        idea.comments.push(data);
       });         
    });  
    $scope.comment = {};   
    };
}]);

app.controller("LocationController", function(){
   this.location = {};
   this.address = {};
   this.findPlace = function() {
     
	$.ajax({
		type: "GET",
		url: "http://maps.googleapis.com/maps/api/geocode/json?address="+this.location.zip,
		data: { zip: this.location.zip }
	})
	.success(function( data ) {
		this.address = data.results[0];
		lat = 1;
		lng = 2;
		google.maps.event.addDomListener(window, 'load', initialize);
		//console.log(this.address.geometry);
		this.location = {};
	});

     
    };
});


