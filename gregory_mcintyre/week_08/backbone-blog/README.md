# PLAN FOR MONDAY

Make a blog.

- DECIDE ON A NAMING CONVENTION ;-)

models
	app.Post
collections
	app.Posts

router
	app.Router

	/
		index - list of all blog posts
	/posts:id
		show - the full content of	
			single post

html
	- index.html

views
	- app.AppView
		- add script tag
		- use it (in the router)
	- app.PostListItemView


	- app.PostView
		- add script tag
		- use my new view (in the router)


