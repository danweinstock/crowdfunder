// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready page:load', function() {

	$('.owned-projects').on( "click", function() {

		$.ajax({
		  url: 'owned',
		  method: 'get',
		  dataType: 'html'
		}).done(function(data) {
			$( "#projects-container" ).html( data );
			$('.owned-projects').addClass('active');			
		});
	});
});

