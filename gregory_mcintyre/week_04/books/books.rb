require 'sinatra'          # gem install sinatra
require 'sinatra/reloader' # gem install sinatra-contrib
require 'sqlite3'          # gem install sqlite3

def query_db(sql)
  puts sql
  db = SQLite3::Database.new('database.db')
  db.results_as_hash = true
  data = db.execute(sql)
  db.close
  return data
end

get '/' do
  "You made it"
end

# get HTML form for creating a book
get '/books/new' do
  erb :'books/new'
end

# create a book
post '/books' do
  query_db( "INSERT INTO books (title, author, year_published) 
    VALUES ('#{ params[:title] }',  '#{params[:author]}', '#{params[:year_published]}')" )
  redirect to '/books'
end

get '/books' do
  @books = query_db('SELECT * FROM books')
  p @books
  erb :'books/index'
end

get '/books/:id' do
  @book = query_db('SELECT * FROM books WHERE id = ' + params[:id]).first
  erb :'books/show'
end

# get HTML form for updating a book
get '/books/:id/edit' do
  @book = query_db('SELECT * FROM books WHERE id = ' + params[:id]).first
  erb :'books/edit'
end

# update a book
post '/books/:id' do
  query_db("UPDATE books SET title = '#{params[:title]}', 
    author = '#{params[:author]}',
    year_published = '#{params[:year_published]}'
    WHERE id = #{params[:id]}")
  redirect to "/books/#{params[:id]}"
end

post '/books/:id/delete' do
  query_db("DELETE FROM books WHERE id = '#{params[:id]}'")
  redirect to "/books"
end