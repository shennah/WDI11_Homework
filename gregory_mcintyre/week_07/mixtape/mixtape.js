// ensure that mixtape namespace is set up
var mixtape = mixtape || {};


// define a new model class called mixtape.Song
mixtape.Song = Backbone.Model.extend({
	// extra functions, definitions, for Song

	defaults: {
		name: "Piano Man",
		artist: "Billy Joel",
	},

	initialize: function() {
		this.on("all", function(event){
			console.log(event);
		});
		this.on("change:artist", function(model){
			console.log("Song now written by " +
			 model.get("artist"));
		});
	}
});


mixtape.SongView = Backbone.View.extend({
	// fetch our song template out of the HTML and
	// prepare it for use
	template: _.template( $("#song-template").html() ),

	events: {
		"click .save-song": "onSave",
		"click .viewing": "onEdit",
	},

	initialize: function() {
		// listen to the model. when it changes,
		// redraw the screen
		this.listenTo(this.model, "change", this.render);
	},

	// backbone will call this when it needs
	// to "redraw" the song
	render: function() {
		// render the song template using the data
		// from the model
		var templateResult = this.template(
			this.model.attributes
		);
		// put the result into the HTML DOM
		this.$el.html(templateResult);
	},

	onSave: function(clickEvent) {
		console.log("onSave");

		// pull the new values out of the text fields 
		var name = this.$(".name-input").val();
		var artist = this.$(".artist-input").val();

		// update the model
		this.model.set({name: name, artist: artist});

		this.$el.removeClass("mode-editing");
	},

	onEdit: function() {
		console.log("onEdit");

		this.$el.addClass("mode-editing");
		this.$(".name-input").focus();
	}
});


$(document).ready(function(){
	song = new mixtape.Song({
		name: "Poison",
		artist: "Alice Cooper"
	});

	var songView = new mixtape.SongView({
		model: song,
		el: $(".song")
	});

	songView.render();

});







