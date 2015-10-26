require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require 'pp'
require 'pry'

get '/' do
	@title = params[:title]
	if @title
		response = HTTParty.get("http://www.omdbapi.com/", query:{ s: @title})
		pp response
		ruby_hash = JSON.parse(response.body)
		@search_results = ruby_hash["Search"]
  		pp @search_results
	end
	erb :form
end



