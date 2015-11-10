var mixtape = mixtape || {};

mixtape.SongView = Backbone.View.extend({
	// fetch our song template out of the HTML and
	// prepare it for use
	template: _.template( $("#song-template").html() ),

	className: "song",

	events: {
		"click .save-song": "onSave",
		"click .name-and-artist": "onEdit",
		"click .remove-song": "onRemove",
	},

	onRemove: function() {
		console.log("onRemove");
		this.model.destroy();
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

		if (this.model.get('artist') === "" &&
				this.model.get('name') === "") {
			this.$el.addClass("mode-editing");
		}
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