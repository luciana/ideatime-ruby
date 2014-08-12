app.factory('commentData', function($resource){
	
	var resource = $resource('/api/v1/comments/:id',{id: '@id'});
	return {
        getComment: function(comment){
            return resource.get({id:comment.id});
        },
        save: function(comment){
            return resource.save(comment);
        }
    };
});