var app = app || {};

app.Comments = Backbone.Collection.extend({
	model: app.Comment,

	initialize: function(models, post) {
		// http://backbonejs.org/#Model-extend
		Backbone.Collection.prototype.initialize.apply(this, models);
		this.post = post;
	},

	url: function(){
		return this.post.url() + "/comments";
	}
});