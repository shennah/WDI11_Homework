var app = app || {};

app.AppView = Backbone.View.extend({
	el: '#app',

	events: {
		'submit .secret-form': 'onSubmit',
	},

	initialize: function(collection) {
		collection.on('add', function(secret){
			var view = new app.SecretView({model: secret});
			view.render();
		});
	},

	onSubmit: function(event) {
		// don't do the normal form submit behaviour
        event.preventDefault(); 

        var $textarea = $(event.target).find('.secret-content input');
		var content = $textarea.val();
		$textarea.val('').focus();
		app.secrets.create({content: content});
	}
});
