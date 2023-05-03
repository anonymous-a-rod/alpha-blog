Rails.application.routes.draw do
  resources :articles

  resources :users, except: %i[ new ]
  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'about', to: 'pages#about'
  
  root 'pages#home'

end
