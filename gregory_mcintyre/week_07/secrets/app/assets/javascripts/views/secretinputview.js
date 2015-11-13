var app = app || {};

app.SecretInputView = Backbone.View.extend({
	el: '#secretForm',

	events: {
		'click button': 'createSecret',
	},

	render: function() {
		var template = $('#secretInputViewTemplate').html();
		this.$el.html(template);
		this.$('textarea').focus();
	},

	createSecret: function(event) {
		console.log('createSecret');
		event.preventDefault();
		$textarea = this.$('textarea');
		var content = $textarea.val();
		app.secrets.create({content: content});
		$textarea.val('').focus();
	}
});