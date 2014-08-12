app.factory('ideaData', function($resource){
	
	var resource = $resource('/api/v1/ideas/:id',{id: '@id'},{
		post: {method: 'POST'}
	});
	return resource;
});