# TO GET THIS WORKING
#
# gem install httparty
# ruby this_file.rb
#

require 'pp'        # built in to Ruby
require 'json'      # built in to Ruby... I think
require 'httparty'  # gem install httparty

response = HTTParty.get("http://www.omdbapi.com/", query: { s: "elf" })
ruby_hash = JSON.parse(response.body)
search_results = ruby_hash["Search"]
search_results.each do |movie_details|
  pp movie_details["Year"]
end
