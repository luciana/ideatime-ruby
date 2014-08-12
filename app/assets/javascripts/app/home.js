var app = angular.module("Home",['ngResource']);

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


