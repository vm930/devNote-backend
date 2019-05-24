Rails.application.routes.draw do
  resources :notes
  resources :users
  resources :codes
  resources :note_codes
  post '/login', to: 'users#login'
end
