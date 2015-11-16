
$(document).ready(function(){
	console.log("ready");

	app.blogPosts = new app.Posts([
		{ 
			title: "Why mum is ALWAYS WRONG", 
			body: `
				<p>Catnipsum dolor sit amet tiger ragdoll fur laze in the sun mreeewww catnip. Alley cat miioo-oo-oo ragdoll alley cat mew grooming sniffing raining cats and dogs biting. Hair ball climbing hellcat paws kittens chewing on my hair kitty-litter squeaking mice. Smokey jumping cool cat catatonic catnipsum kitty-litter mmmeoww. Squeaking mice catnipsum curiosity killed the cat meew treats nose purrfection catnip. Jump tabby meow cat scratching daisy catnip. Kurilian bobtail cat amongst the pigeons tigger warm kitty jumping catwalk hisss i smell a rat gizmo. Mouse calico oliver pussy catnip curl up in a blanket fur. Abyssinian sleep on the sofa meow catnipsum meaaaawww treats lucky cat-eyes.
				<p>Will they do this when they're older dreamy bed mreoaw american longhair feed me under her chair happy kitty cat amongst the pigeons catwalk. Sassy hiss raowwwww happy kitty mmeww there's a kitten on my head kitty. Little ball of fur i've been to london bowl little ball of fur pet me catnipsum burmese string. Mittens sassy mewmew abyssinian midnight. Mreoaw milo meeow mreoaw mreeewww angora catnap midnight. Catnip kittens climbing up my jeans ack-ack oliver a cat has nine lives there's a kitten on my head sunbathe paws. European shorthair catnipsum happy kitty daisy catnipsum i've been to london will they do this when they're older jump oscar.
				<p>Ball kitty catnip whiskers. Missy cuddle me cheshire whiskers rrrow-mawww catnipsum kittens chewing on my hair meaaaawww look what the cat dragged in. To look at the queen tiger ack-ack fur missy soft fur look what the cat dragged in mreoaw. Feathers mewmew kittens chewing on my hair bengal kittens kittens everywhere i've been to london pouncing grooming coco. Kitty fish tigger mrowwwww. Miaow cool cat ragdoll california spangled cat laze in the sun pussy cat, pussy cat. Feed me sam there's a kitten in the bread catnipsum squeaking mice bobtail feathers felix. Mreoaw tiger mewmew rowwrrr milo. Catnipsum meeowww samantha lucy.
			`
		},
		{ 
			title: "I always feel fat",
			body: `
				<p>Catnipsum dolor sit amet missy felix grooming taz misty. Puss sleep on your keyboard cool cat catnip laze in the sun burmese mrow catnipsum catnip. 
			`
		},
		{ 
			title: "Little sisters are evil", 
			body: `
				<p>Catnipsum dolor sit amet kitty fluffy mouse. Cat rawwww scratching post miaowww catnip catnip. Sunbathe pussy cat, pussy cat mreoaw cat and mouse act purr purr purr catnip will they do this when they're older cuddle me cat amongst the pigeons. Bobtail kittens chewing on my hair tigger there's a kitten in the bread purr purr purr kittens hanging from the screens tail dreamy bed kittens fighting on the chairs. Soft fur dappled fur ball catnipsum jingle-bells midnight long thin tail oreo catnappers. Catnipsum cat got your tounge smokey shadow oreo cat-eyes biting fluffy catnipsum. Catnip raining cats and dogs bobtail curl up in a blanket tiger. Catatonic meeow mrowwwww hairball exotic feed me dreamy bed. Miaowmiaow meeow pussy soft kitty cat got your tounge.
				<p>Rawwww squeaking mice catnip calico catnappers little ball of fur shorthair. Hiss there's a kitten on each shoulder siamese charlie sassy hair ball miaowmiaow catnipsum. Sleep on your keyboard misty thai sassy smokey bowl alley cat chase catnipsum. Midnight chartreux catatonic laze in the sun shorthair kittens climbing up my jeans. Hairball curly jumping string. Squeaking mice sniffing mreeewww nose. Jump happy kitty where have u been soft kitty cat got your tounge. Pet me coco scratching post angora exotic pussy cat, pussy cat catnipsum catnap. Gizmo cat got your tounge rowwrrr under her chair shadow long thin tail hairball hiss. Cat and mouse act raowwwww paws sleepy kitty purrfection.
				<p>Fluffy oreo curiosity killed the cat catnipsum mrooww sam clawing catnip. I've been to london catnip treats kittens fighting on the chairs petite thai catnipsum. What did you there? taz california spangled cat sam. Alley cat i smell a rat oreo dappled fur. Burmilla catnip biting scratching post. Meew laze in the sun burmilla kitty paws laze in the sun. Molly cuddle me catnip cat catnappers kittens fighting on the chairs cuddle me bombay what did you there?. Cat in a hat burmese bobtail kittens tumbling down the stairs warm kitty miaow. Catnip ack-ack mittens paws catnip petite catnip sassy. Catnipsum mrooww california spangled cat meaaaawww.
				<p>Shadow dreamy bed milo mreeewww kittens chewing on my hair boots string kittens tumbling down the stairs. Abyssinian sassy fluffy bobtail missy hiss copycat roll in the grass. Jingle-bells longhair what did you there? meeowww feathers catnip angora copycat. Mrowwwww purr purr purr catatonic fur ball ack-ack. European shorthair catatonic smokey midnight kittens tumbling down the stairs molly cuddle me there's a kitten on my head string. Purr cat longhair catnap. Pussy cat, pussy cat tonkinese persian where have u been fluffy catnipsum feathers hair ball.
				<p>Licking biting meeowww molly. Hiss smokey what did you there? there's a kitten on each shoulder feathers will they do this when they're older charlie. Raining cats and dogs tail mreoaw chartreux. Biting string curl up in a blanket little ball of fur catnipsum sniffing hellcat. Mrooww kittens fighting on the chairs tail mrowwwww molly midnight feathers pussy cat, pussy cat sunbathe. Persian cool cat rrrow-mawww abyssinian kittens climbing up my jeans. Charlie kittens hanging from the screens abyssinian to look at the queen. European shorthair catnip rolling catnip. A cat may look at a king kitty-litter dreamy bed fur. Coco rowwrrr toy let the cat out of the bag there's a kitten on my head. Feed me kittens kittens everywhere taz catnip pussy cat, pussy cat. Smokey what did you there? hiss there's a kitten on my head catnipsum. There's a kitten on my head catnipsum meeow american longhair.
			`
		},
	]);

	var router = new app.Router();
	Backbone.history.start();
});
