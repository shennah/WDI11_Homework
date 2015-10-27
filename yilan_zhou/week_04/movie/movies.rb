require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'
require 'json'

get '/' do
	@title = params[:title] #from form
		response = HTTParty.get("http://www.omdbapi.com/",query:{s:@title, type:"movie"})
		ruby_hash = JSON.parse(response.body) #chg to ruby hash from js obj
		@search_result = ruby_hash["Search"]
# if @search_result.length ==1
#       redirect "http://www.omdbapi.com/?s:"+@title
#   else
#     erb:form
#   end
	  erb:form
end
