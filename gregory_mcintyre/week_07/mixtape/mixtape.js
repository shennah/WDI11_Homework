// ensure that mixtape namespace is set up
var mixtape = mixtape || {};


// define a new model class called mixtape.Song
mixtape.Song = Backbone.Model.extend({
	// extra functions, definitions, for Song

	initialize: function() {
		this.on("all", function(event){
			console.log("song", event);
		});
	}
});


mixtape.SongList = Backbone.Collection.extend({
	model: mixtape.Song,

	initialize: function() {
		this.on("all", function(event){
			console.log("list", event);
		});
	}
});


mixtape.SongView = Backbone.View.extend({
	// fetch our song template out of the HTML and
	// prepare it for use
	template: _.template( $("#song-template").html() ),

	className: "song",

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


mixtape.MixtapeView = Backbone.View.extend({
	el: $('.mixtape'),

	events: {
		"click .add-song": "onAddSong",
	},

	initialize: function(songList) {
		this.songList = songList;
		this.listenTo(this.songList, "update", this.render);
	},

	render: function() {
		this.$('.song-list').empty();

		for (var i = 0; i < this.songList.length; i++) {
			var song = this.songList.at(i);
			var view = new mixtape.SongView({
				model: song
			});
			view.render();
			this.$(".song-list").append(view.el);

			// newParagraph = $("<p> blah </p>");
			// $(".essay").append(newParagraph);
		}
	},

	onAddSong: function() {
		console.log("onAddSong");
		this.songList.add({name: "", artist: ""});
	}
});


$(document).ready(function(){
	song = new mixtape.Song({
		name: "Poison",
		artist: "Alice Cooper"
	});

	song2 = new mixtape.Song({
		name: "Song 2",
		artist: "Blur"
	});

	songList = new mixtape.SongList([song, song2]);
	mixtapeView = new mixtape.MixtapeView(songList);
	mixtapeView.render();

	// var songView = new mixtape.SongView({
	// 	model: song,
	// 	el: $(".song")
	// });

	// songView.render();

});







