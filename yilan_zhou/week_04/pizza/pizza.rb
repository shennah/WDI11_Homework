require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'pp'

def query_db(sql)
  puts sql
  db = SQLite3::Database.new('database.db')
  db.results_as_hash = true
  data = db.execute(sql)
  db.close
  return data
end

get '/' do
  @title = "GA Pizza Menu"
  @pizzas = query_db('SELECT * FROM pizzas')
  pp @pizzas
  erb :index
end

get '/new' do
  @title = "Create new pizza"
  erb :new
end

post '/new' do
  query_db("INSERT INTO pizzas (name, energy,range) 
    VALUES ('#{params[:name]}', '#{params[:energy]}','#{params[:range]}')")
  @pizzas = query_db('SELECT * FROM pizzas')
  redirect to '/'
end

get '/:id' do
  @pizzas = query_db('SELECT * FROM pizzas WHERE id='+params[:id]).first
  erb :show
end

get '/:id/edit' do
  @pizzas = query_db('SELECT * FROM pizzas WHERE id='+params[:id]).first
  erb :edit
end

post '/:id' do
  query_db("UPDATE pizzas SET name = '#{params[:name]}', 
    energy = '#{params[:energy]}',
    range = '#{params[:range]}'
    WHERE id = #{params[:id]}")
  redirect to "/#{params[:id]}"
end

post '/:id/delete' do
  query_db("DELETE FROM pizzas WHERE id = '#{params[:id]}'")
  redirect to "/"
end






