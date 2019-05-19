Rails.application.routes.draw do
  resources :notes
  resources :users
  post '/login', to: 'users#login'
end
