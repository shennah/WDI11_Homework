# TO GET THIS EXAMPLE WORKING
#
# gem install sinatra
# gem install sinatra-contrib
#
# To start the server:
#
# ruby this_file.rb
#
# To use the app:
#
# open http://localhost:4567/


require 'sinatra'
require 'sinatra/reloader'

# /
# output our form in HTML

# /?title=how+do+i+capitalise+words+even
# output the result in HTML

get '/' do
  p params
  @title = params["title"]

  if @title.to_s.size > 0
    @title = @title.split(" ").map{|x| 
      x.capitalize 
    }.join(" ")
  else
    @title = nil
  end

  erb :form
end
