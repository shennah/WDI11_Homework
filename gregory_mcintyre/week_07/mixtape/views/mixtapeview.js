var mixtape = mixtape || {};

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
		}
	},

	onAddSong: function() {
		console.log("onAddSong");
		this.songList.unshift({name: "", artist: ""});
	}
});