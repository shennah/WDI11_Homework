var app = app || {};

app.Router = Backbone.Router.extend({
	routes: {
		"posts/:id": "postShow",
		"*other": "postIndex"
	},

	postShow: function(id) {
		console.log("postShow", id);
		var post = app.blogPosts.get(id);
		var view = new app.PostView({model: post});
		view.render();
	},

	postIndex: function() {
		console.log("postIndex");
		var view = new app.AppView({collection: app.blogPosts});
		view.render();
	}
});