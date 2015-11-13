var app = app || {};

app.Secrets = Backbone.Collection.extend({
	url: "/secrets",
	model: app.Secret,

	initialize: function() {
		this.on('add', function(secret){
			var view = new app.SecretView({model: secret});
			view.render();
		});
	}
});
