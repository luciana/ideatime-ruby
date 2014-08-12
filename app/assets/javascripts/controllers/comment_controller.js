app.controller("CommentController", function($scope, commentData){
	$scope.saveComment= function(comment, idea){
		$scope.comment = {};
		comment.idea_id = $("#commentIdeaIdHidden").val();
		commentData.save(comment)
			.$promise.then(
				function(response) {
					commentData.getComment(response).$promise.then(function(c) {
						
						$scope.comment = c;
					});

					
				},
				function(response) { console.log('failure', response);}
			);
		
    };
});