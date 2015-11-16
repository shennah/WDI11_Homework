// {[ console.log("Hello"); ]} - runs code (for if statements, loops etc.)
// {{ key }} - interpolates
 _.templateSettings = {
    evaluate : /\{\[([\s\S]+?)\]\}/g,
    interpolate : /\{\{([\s\S]+?)\}\}/g
};

$(document).ready(function(){
	console.log("ready");

	app.blogPosts = new app.Posts();
	app.blogPosts.fetch().done(function(){
		var router = new app.Router();
		Backbone.history.start();
	});

});
