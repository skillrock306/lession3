Rails.application.routes.draw do
  resources :categories
  resources :microposts
  get 'sessions/new'
  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"
  resources :users

  root 'pages#index'
  get '/signup', to: 'users#new'
  get   '/users' 	=> 'users#index'

end
