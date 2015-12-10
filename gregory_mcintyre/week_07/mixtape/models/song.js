var mixtape = mixtape || {};

// define a new model class called mixtape.Song
mixtape.Song = Backbone.Model.extend({
	// extra functions, definitions, for Song

	defaults: {
		name: "",
		artist: "",
		lyrics: ""
	},

	initialize: function() {
		this.on("all", function(event){
			console.log("song", event);
		});
	}
});