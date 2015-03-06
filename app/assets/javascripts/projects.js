// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// $(document).on('ready page:load', function() {
  
//   // reload #products content on search submit
//   $('.back-project').submit(function(event) {
//     event.preventDefault();
//     var searchValue = $('#search').val();
//     var url = '/products?search=' + searchValue;
    
//     $.get(url).done( function(data) {
//       $('#products').html(data);
//     });
//     $.ajax({
//       url: url,
//       type: 'GET',
//       dataType: 'html'
//     }).done( function(data){
//       $('#products').html(data);
//     }, function(){
//     	window.history.pushState("foo", "bar", url);
//     });
//   });

// }); // crowdfunder will break if you remove this bracket
