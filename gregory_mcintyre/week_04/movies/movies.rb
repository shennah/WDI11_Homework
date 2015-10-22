require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pp'

get '/' do
  @title = params[:title] # from the <form> the user submitted

  if @title
    response = HTTParty.get("http://www.omdbapi.com/", query: { s: @title })
    # response.body is a biiiig string, formatted in JSON format
    ruby_hash = JSON.parse(response.body)
    @search_results = ruby_hash["Search"]
    #pp @search_results
  end

  erb :form
end