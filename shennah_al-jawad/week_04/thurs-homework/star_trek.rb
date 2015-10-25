require 'sinatra'          
require 'sinatra/reloader'
require 'sqlite3'          
require 'pp'


# Running SQL and returning results if available
def query_db(sql)
  puts sql
  db = SQLite3::Database.new('database.db')
  db.results_as_hash = true
  data = db.execute(sql)
  db.close
  return data
end


# Homepage
get '/' do
  "<a href='/star_trek'>star_trek</a>"
end

# get html to add new
get '/star_trek/new' do
	erb 'star_trek/new'.to_sym # converts string to symbol
end

# create new
post '/star_trek' do
	query_db( "INSERT INTO star_trek (species, planet, charachters, description, photo) VALUES ('#{params[:species]}', '#{params[:planet]}', '#{params[:charachters]}', '#{params[:description]}', '#{params[:photo]}')")
	redirect to '/star_trek'
end

# list species
get '/star_trek' do
	@star_trek = query_db('SELECT * FROM star_trek')
	pp @star_trek
	erb 'star_trek/index'.to_sym
end

# show more details
get '/star_trek/:id' do
	@star_trek = query_db('SELECT * FROM star_trek WHERE id = ' + params[:id]).first
	pp @star_trek
	erb 'star_trek/show'.to_sym
end

# get HTML form for updating
get '/star_trek/:id/edit' do
  @star_trek = query_db('SELECT * FROM star_trek WHERE id = ' + params[:id]).first
  pp @star_trek
  erb 'star_trek/edit'.to_sym
end

# update a species
post '/star_trek/:id' do
  query_db("UPDATE star_trek SET species = '#{params[:species]}', 
    planet = '#{params[:planet]}',
    charachters = '#{params[:charachters]}', description = '#{params[:description]}', photo = '#{params[:photo]}'
    WHERE id = #{params[:id]}")
  redirect to "/star_trek/#{params[:id]}"
end

# delete a book
post '/star_trek/:id/delete' do
  query_db("DELETE FROM star_trek WHERE id = '#{params[:id]}'")
  redirect to "/star_trek"
end

















