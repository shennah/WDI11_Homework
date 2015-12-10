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

# localhost:4567
get '/' do
 	"Here we go for <a href='/shop'>Shopping</a>"
end

# localhost:4567/shop
get '/shop' do
 	 erb 'shop/index'.to_sym
end

# http://localhost:4567/shop/list
get '/shop/list' do
 	@shop = query_db('SELECT * FROM shopping')
 	p @shop
  	erb :'shop/list'
  	pp @shop
 	erb 'shop/list'.to_sym
end

# http://localhost:4567/shop/new
get '/shop/new' do
  erb :'shop/new'
  erb 'shop/new'.to_sym
end

#add a new item
post '/shop' do
	query_db("INSERT INTO shopping (product_code, product_name, price, expiry_date) 
    	VALUES ('#{params[:product_code]}', '#{params[:product_name]}', '#{params[:price]}', '#{params[:expiry_date]}')")
	redirect to '/shop/list'
end

# show
 get '/shop/:product_code' do
	@shop = query_db('SELECT * FROM shopping WHERE product_code = ' + params[:product_code]).first
  	erb :'shop/show'
  	pp @shop
  	erb 'shop/show'.to_sym
 end

 # http://localhost:4567/shop/edit
 get '/shop/:product_code/edit' do 
  @shop = query_db('SELECT * FROM shopping WHERE product_code = ' + params[:product_code]).first  
  erb :'shop/edit'
  pp @shop
  erb 'shop/edit'.to_sym
 end

 # update an item
 post '/shop/:product_code' do
   query_db("UPDATE shopping SET product_name = '#{params[:product_name]}', 
     price = '#{params[:price]}',
     expiry_date = '#{params[:expiry_date]}'
     WHERE product_code = #{params[:product_code]}")
   redirect to "/shop/#{params[:product_code]}"
 end

 # delete an item
 post '/shop/:product_code/delete' do
   query_db("DELETE FROM shopping WHERE product_code = '#{params[:product_code]}'")
   redirect to "/shop/list"
 end







