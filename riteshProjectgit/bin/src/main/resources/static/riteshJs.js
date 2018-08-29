$(function(){
  	  
	  var locId = $('#paramId').val();
	  var url="http://localhost:8080/locations/"+locId;
	  $.getJSON(url).done(function(data){
		  console.log(data);
		  var countInstructor = data.instructor.length;
		  $("#titleDiv").html(countInstructor+" instructor found in your selected location");
	  }).fail(function(){
		  
	  });
	  
	 
	  

		
});
