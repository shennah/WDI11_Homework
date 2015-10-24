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

require 'sinatra'          # gem install sinatra
require 'sinatra/reloader' # gem install sinatra-contrib
require 'sqlite3'          # gem install sqlite3
require 'pp'               # built in :-)

# Run some SQL and return any results, if there are any
def query_db(sql)
  puts sql
  db = SQLite3::Database.new('database.db')
  db.results_as_hash = true
  data = db.execute(sql)
  db.close
  return data
end

# Landing page / home page, to reassure people that it worked
get '/' do
  "You made it (go to <a href='/books'>books</a>)."
end

# get HTML form for creating a book
get '/books/new' do
  erb 'books/new'.to_sym
end

# create a book
post '/books' do
  query_db( "INSERT INTO books (title, author, year_published) 
    VALUES ('#{ params[:title] }',  '#{params[:author]}', '#{params[:year_published]}')" )
  redirect to '/books'
end

# list all the books
get '/books' do
  @books = query_db('SELECT * FROM books')
  pp @books
  erb 'books/index'.to_sym
end

# show more details about a specific book
get '/books/:id' do
  @book = query_db('SELECT * FROM books WHERE id = ' + params[:id]).first
  pp @book
  erb 'books/show'.to_sym
end

# get HTML form for updating a book
get '/books/:id/edit' do
  @book = query_db('SELECT * FROM books WHERE id = ' + params[:id]).first
  pp @book
  erb 'books/edit'.to_sym
end

# update a book
post '/books/:id' do
  query_db("UPDATE books SET title = '#{params[:title]}', 
    author = '#{params[:author]}',
    year_published = '#{params[:year_published]}'
    WHERE id = #{params[:id]}")
  redirect to "/books/#{params[:id]}"
end

# delete a book
post '/books/:id/delete' do
  query_db("DELETE FROM books WHERE id = '#{params[:id]}'")
  redirect to "/books"
end