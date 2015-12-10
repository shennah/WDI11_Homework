var app = app || {};

app.AppView = Backbone.View.extend({
	el: "#page",

	render: function() {
		this.$el.empty();

		this.$el.html("<h1>My Embarrassing Family</h1>");

		var listElem = $("<div/>").addClass("post-item-list");

		// for (var i = 0; i < this.collection.length; i++) {
		// 	var post = this.collection.at(i);

		// 	// all the same things
		// 	var a = $("<a/>").
		// 		attr("href", "#posts/" + post.cid).
		// 		text(post.get("title"));
		// 	// ...
		// }

		this.collection.each(function(post){
			var a = $("<a/>").
				attr("href", "#posts/" + post.id).
				text(post.get("title"));
			var title = $("<h1/>");
			title.append(a);
			var body = $("<div/>").addClass("post-body").html(post.get("body"));
			var postElem = $("<div/>").addClass("post-item");
			postElem.append(title);
			postElem.append(body); // todo: put this back later
			listElem.append(postElem);
		});
		this.$el.append(listElem);
	}
});