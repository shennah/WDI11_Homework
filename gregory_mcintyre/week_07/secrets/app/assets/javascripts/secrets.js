// Configure Underscore template system so that it doesn't use the same
// syntax as ERB template system.

// {[ console.log("Hello"); ]} - runs code (for if statements, loops etc.)
// {{ key }} - interpolates
 _.templateSettings = {
    evaluate : /\{\[([\s\S]+?)\]\}/g,
    interpolate : /\{\{([\s\S]+?)\}\}/g
};


var app = app || {};

app.init = function() {
	app.secrets = new app.Secrets();
	app.view = new app.AppView(app.secrets);

	app.secrets.fetch({
		success: function() {
			// Poll the server for new secrets every 4 seconds.
			setInterval(function () {
				app.secrets.fetch();
			}, 4000); // 4 seconds
		},
		error: function() {
			console.log('error loading secrets');
		}
	});
};