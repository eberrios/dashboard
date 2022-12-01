Rails.application.routes.draw do

  devise_for :admins
  root to: 'home#index'
  get 'home/show'

  get '/home/detail/:id', to: 'home#detail', as: 'detail'

  

end
