Rails.application.routes.draw do
  resources :ideas

  #   $ rake routes
  #    Prefix Verb   URI Pattern               Controller#Action
  #     ideas GET    /ideas(.:format)          ideas#index
  #           POST   /ideas(.:format)          ideas#create
  #  new_idea GET    /ideas/new(.:format)      ideas#new
  # edit_idea GET    /ideas/:id/edit(.:format) ideas#edit
  #      idea GET    /ideas/:id(.:format)      ideas#show
  #           PATCH  /ideas/:id(.:format)      ideas#update
  #           PUT    /ideas/:id(.:format)      ideas#update
  #           DELETE /ideas/:id(.:format)      ideas#destroy


  # HOMEWORK

  # /games/magic8?q=am+i+awesome

  #get '/games/magic' => 'magic#question'

  get '/games/secret' => 'secret_number#index'         # print a list of links
  get '/games/secret/:number' => 'secret_number#guess' # validate the guess

end
