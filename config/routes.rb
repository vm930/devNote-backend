Rails.application.routes.draw do
  resources :notes
  resources :users
  resources :codes
  post '/login', to: 'users#login'
end
