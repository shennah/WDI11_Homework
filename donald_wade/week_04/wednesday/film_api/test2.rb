require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/content_for'
require 'httparty'
require 'json'
require 'pp'

get '/' do
  url_string = ""
  pp params
  pp params["your_search"]
    if params["your_search"] != ""
      @your_search_request = params["your_search"]
      if @your_search_request != nil
        @big_result = HTTParty.get("http://www.omdbapi.com/", query:{ s: @your_search_request})
        myJSON = JSON.parse(@big_result)
        puts myJSON


        pp "here is teh reaue of your serarc #{@big_result["Search"]}"
        if @big_result["Response"] != "False"
        @search_array = @big_result["Search"]
        puts "what is goint on #{@search_array}"
        @search_array.each do | movie |
          pp movie["Poster"]
          if movie["Poster"] != "N/A"
            url_string += "<img class='my_image' src=" + movie["Poster"] + ">"
          end
          if url_string == ""
            @message = "Sorry, there don't appear to be any posters relating to your search."
          end
        end
      end

    else @message = "You seem not to have searched for anything. Feel free to try again."
      end
    end
  @image_url = url_string
  pp @image_url
  erb :index
end


get '/detail' do
  erb :index
end
