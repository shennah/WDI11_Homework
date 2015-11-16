var app = app || {};

app.PostView = Backbone.View.extend({
	el: "#page",

	render: function() {
		var title = $("<h1/>").text(this.model.get("title"));
		var body = $("<div/>").html(this.model.get("body"));
		var postElem = $("<div/>").addClass("post");
		postElem.append(title);
		postElem.append(body);
		this.$el.html(postElem);
	}
});