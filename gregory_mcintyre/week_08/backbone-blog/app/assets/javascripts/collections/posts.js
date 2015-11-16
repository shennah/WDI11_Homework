var app = app || {};

app.Posts = Backbone.Collection.extend({
	url: '/posts',
	model: app.Post
});