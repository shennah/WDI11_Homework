require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/content_for'
require 'httparty'
require 'json'
require 'pp'

get '/' do
  @big_result = HTTParty.get("http://www.omdbapi.com/", query:{ s: "kjdkfjdf"})
  puts@big_result
  erb :index
end

# @big_result["Response"] == "False"
