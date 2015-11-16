var app = app || {};

app.PostView = Backbone.View.extend({
	el: "#page",

	render: function() {
		var title = $("<h1/>").text(this.model.get("title"));
		var body = $("<div/>").addClass("post-body").html(this.model.get("body"));
		var postElem = $("<div/>").addClass("post");
		postElem.append(title);
		postElem.append(body);
		var commentsList = $("<ul/>");
		postElem.append($("<hr>"));
		postElem.append($("<h2>Comments</h2>"));
		postElem.append(commentsList);
		this.$el.html(postElem);

		// fetch comments
		var comments = new app.Comments([], this.model);
		comments.fetch().done(function(){
			console.log("here");
			comments.each(function(comment){
				var commentElem = $("<li/>").addClass("comment").text(comment.get("content"));
				commentsList.append(commentElem);
			});
		});
	},
});