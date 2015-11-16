var app = app || {};

app.AppView = Backbone.View.extend({
	el: "#page",

	render: function() {
		this.$el.empty();

		this.$el.html("<h1>My Embarrassing Family</h1>");

		var listElem = $("<div/>").addClass("post-item-list");
		this.collection.each(function(post){
			var a = $("<a/>").
				attr("href", "#posts/" + post.cid).
				text(post.get("title"));
			var title = $("<h1/>");
			title.append(a);
			var body = $("<div/>").html(post.get("body"));
			var postElem = $("<div/>").addClass("post-item");
			postElem.append(title);
			postElem.append(body); // todo: put this back later
			listElem.append(postElem);
		});
		this.$el.append(listElem);
	}
});