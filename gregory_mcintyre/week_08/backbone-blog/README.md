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

--------

- Put the app into Rails
	* rails new 
	* Move files
		* Move BB files into assets folder
		* Move library files into vendor folder
		* Move html into .erb file
		* Update application.js //= require_tree ./models
	* Check to see it works (like before)

	* Set up Post model and API
		* srails g scaffold post title body:text
		* rake db:create
		* rake db:migrate

	- Update BB models to fetch/save to Rails API
		- Collection: url: '/posts'
		- Post model: urlRoot: '/posts'
	- Play with it and check it's working
	