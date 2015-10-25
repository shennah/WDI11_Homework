require 'pp'
require 'httparty'
require 'sinatra'
require 'json'
require 'sinatra/reloader'

get '/' do
	@movie_search = params[:movie_search]

	if @movie_search != nil

		response = HTTParty.get('http://www.omdbapi.com/?', query:{ s: @movie_search })
		# response.body is a big string formated in JSON format
		ruby_hash = JSON.parse(response.body)

		@search_results = ruby_hash["Search"]

		pp @search_results

		# search_results.each do |movie_details|
			# pp movie_details["Title"]
			# pp movie_details["Year"]
			# @title = movie_details["Title"]
			# @year = movie_details["Year"]

			# @search_results = @title, @year
		#end
		# @search_results = @title, @year
	end
	erb :movies
end