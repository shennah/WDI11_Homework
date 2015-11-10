# TO SET UP THIS PROJECT:
#
#   sqlite3 database.db < setup.sql
#   gem install sinatra
#   gem install sinatra-contrib
#   gem install sqlite3
#
# TO RUN THIS PROJECT:
#
#   ruby books.rb
#
# TO USE THIS PROJECT:
#
#   open http://localhost:4567
#

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
  "You have arrived. Now go to <a href='/martial_arts'>martial arts</a>"
end

get '/martial_arts/new' do
  erb '/martial_arts/new'.to_sym
end

post '/martial_arts' do
  query_db( "INSERT INTO martial_arts (martial_art, country_of_origin, style, notes)
  VALUES ('#{params[:martial_art]}', '#{params[:country_of_origin]}', '#{params[:style]}', '#{params[:notes]}')" )
  # erb 'martial_arts/index'.to_sym
  redirect to '/martial_arts'
end

# list all the books
get '/martial_arts' do
  @martial_arts = query_db('SELECT * FROM martial_arts')
  pp @martial_arts
  erb 'martial_arts/index'.to_sym
end

get '/martial_arts/:id' do
  @martial_art = query_db('SELECT * from martial_arts WHERE id = ' + params[:id]).first
  pp @martial_art
  erb 'martial_arts/show'.to_sym
end

get '/martial_arts/:id/edit' do
  @martial_art = query_db('SELECT * FROM martial_arts where id = ' + params[:id]).first
  pp @martial_art
  erb 'martial_arts/edit'.to_sym
end

get '/martial_arts/:id' do
  @martial_art = query_db('SELECT * FROM martial_arts WHERE id = ' + params[:id]).first
  pp @martial_art
  erb 'martial_arts/show'.to_sym
end

post '/martial_arts/:id' do
  query_db("UPDATE martial_arts SET martial_art = '#{params[:martial_art]}',
    country_of_origin = '#{params[:country_of_origin]}',
    style = '#{params[:style]}',
    notes = '#{params[:notes]}'
    WHERE id = #{params[:id]}'")
  redirect to "/martial_arts/#{params[:id]}"
end

post '/martial_arts/:id/delete' do
  query_db("DELETE FROM martial_arts WHERE id =
    '#{params[:id]}'")
    redirect to "/martial_arts"
end
