# NOT FINISHED

require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/content_for'
require 'pp'

get '/' do
  @string = "Do you have a test for that?"
  erb :index
end

get '/pass' do
  @string = "Does the test pass?"
  erb :pass
end

get '/write_test' do
  @string = "Write a test"
  erb :write_test
end

get '/refactor' do
  @string = "Refactor your code"
  erb :refactor
end

get '/write_code' do
  @string = "Write just enough code for the test to pass"
  erb :write_code
end

get '/need_to_refactor' do
  @string = "Do you need to refactor your code?"
  erb :need_to_refactor
end

get '/new_feature' do
  @string = "Select a new feature"
  erb :new_feature
end
