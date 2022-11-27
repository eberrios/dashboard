Rails.application.routes.draw do

  devise_for :admins
  root to: 'home#index'
  post '/home/show/:id', to: 'home#show', as: 'show'
  get '/home/detail/:id', to: 'home#detail', as: 'detail'

  

end
