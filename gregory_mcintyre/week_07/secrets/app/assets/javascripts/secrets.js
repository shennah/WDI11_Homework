// Configure Underscore template system so that it doesn't use the same
// syntax as ERB template system.

// {[ console.log("Hello"); ]} - runs code (for if statements, loops etc.)
// {{ key }} - interpolates
 _.templateSettings = {
    evaluate : /\{\[([\s\S]+?)\]\}/g,
    interpolate : /\{\{([\s\S]+?)\}\}/g
};


var app = app || {};

$(document).ready(function(){

	app.secrets = new app.Secrets();
	app.secrets.fetch();

	var appView = new app.AppView({collection: app.secrets});
	appView.render();

    // Poll the server for new secrets every 4 seconds.
    setInterval(function () {
      app.secrets.fetch();
    }, 4000); // 4 seconds

});