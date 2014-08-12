app.controller("IdeaController", function($scope, ideaData){

  
  $scope.ideas = ideaData.query();
  
  $scope.saveIdea= function(idea, form){
    idea.user_id = $("#ideaUserIdHidden").val();
    idea.display = "public";    
    if(form.$valid) {  
      ideaData.save(idea)
          .$promise.then(
              function(response) { $scope.ideas = ideaData.query();},
              function(response) { console.log('failure', response)}
          );
    }else{
      alert('form is  not valid - fix it!');
    }

   	$scope.idea ={};
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
});