
$(document).ready(function(){
	// console.log $("#planet_image")
	$("#planet_image").on("change", function(event) {
		$("#preview").html('<img src="' + event.target.value + '">');
	});
});
