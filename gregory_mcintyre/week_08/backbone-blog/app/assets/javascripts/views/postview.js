var app = app || {};

app.PostView = Backbone.View.extend({
	el: "#page",

	render: function() {
		var title = $("<h1/>").text(this.model.get("title"));
		var body = $("<div/>").html(this.model.get("body"));
		var postElem = $("<div/>").addClass("post");
		postElem.append(title);
		postElem.append(body);
		var comments = $("<ul/>");
		_.each(this.model.get("comments"), function(comment){
			var commentElem = $("<li/>").addClass("comment").text(comment.content);
			comments.append(commentElem);
		});
		postElem.append($("<hr>"));
		postElem.append(comments);
		this.$el.html(postElem);
	}
});