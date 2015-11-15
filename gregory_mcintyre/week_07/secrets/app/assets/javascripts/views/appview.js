var app = app || {};

app.AppView = Backbone.View.extend({
	el: '#app',

	textFieldSelector: '.secret-content input',

	events: {
		'submit .secret-form': 'onSubmit',
	},

	initialize: function(collection) {
		this.listenTo(collection, 'add', function(secret){
			var view = new app.SecretView({model: secret});
			view.render();
		});
		this.$(this.textFieldSelector).focus();
	},

	onSubmit: function(event) {
		// don't do the normal form submit behaviour
		event.preventDefault();

		var $input = $(event.target).find(this.textFieldSelector);
		var content = $input.val();
		$input.val('').focus();
		app.secrets.create({content: content});
	}
});
