Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #custom routes 
  #http verb, url, controller#action 
  get '/plants', to: 'plant#index'
  get '/plants/:id', to: 'plant#show'
  post '/plants', to:  'plant#create'

end
