
$(document).ready(function(){
	var song = new mixtape.Song({
		name: "Poison",
		artist: "Alice Cooper",
		lyrics: `Your cruel device
your blood, like ice
One look, could kill
My pain, your thrill

I want to love you but I better not touch (don?t touch)
I want to hold you, but my senses tell me to stop
I want to kiss you but I want it too much (too much)
I want to taste you but your lips are venomous poison
You're poison, running through my veins
Poison
I don't want to break these chains

Your mouth, so hot
Your web, I'm caught
Your skin, so wet
Black lace, on sweat

I hear you calling and it's needles and pins (and pins)
I want to hurt you just to hear you screaming my name
Don't want to touch you but you're under my skin (deep in)
I want to taste you but your lips are venomous poison
You're poison, running through my veins
Poison
I don't want to break these chains
Poison...

(guitar solo)

One look, could kill
My pain, your thrill

I want to love you but I better not touch (don?t touch)
I want to hold you, but my senses tell me to stop
I want to kiss you but I want it too much (to much)
I want to taste you but your lips are venomous poison
You're poison, running through my veins
Poison
I don't want to break these chains
Poison (Poi-son)

I want to love you but I better not touch (don?t touch)
I want to hold you, but my senses tell me to stop
I want to kiss you but I want it too much (too much)
I want to taste you but your lips are venomous poison
Yeah
Well I don't want to break these chains
Poison
Runnin' deep inside my veins
Burnin' deep inside my brain
Poison
And I don't want to break these chains
Poison

		`,
	});

	var song2 = new mixtape.Song({
		name: "Song 2",
		artist: "Blur",
		lyrics: `Woo-hoo
Woo-hoo
Woo-hoo
Woo-hoo

I got my head checked
By a jumbo jet
It wasn't easy
But nothing is 
No

Woo-hoo
When I feel heavy-metal
And I'm pins and I'm needles
Well, I lie and I'm easy
All the time but I'm never sure
Why I need you
Pleased to meet you

I got my head down
When I was young
It's not my problem
It's not my problem

Woo-hoo
When I feel heavy-metal
And I'm pins and I'm needles
Well, I lie and I'm easy
All the time but I am never sure
Why I need you
Pleased to meet you

Yeah yeah
Yeah yeah
Yeah yeah
Oh yeah
		`
	});

	mixtape.songList = new mixtape.SongList([song, song2]);
	mixtape.mixtapeView = new mixtape.MixtapeView(mixtape.songList);
	mixtape.mixtapeView.render();

	mixtape.router = new mixtape.Router();
	Backbone.history.start();
});
