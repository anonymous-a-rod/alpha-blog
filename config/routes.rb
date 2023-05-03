Rails.application.routes.draw do
  resources :articles

  resources :users, except: %i[ new ]
  get 'signup', to: 'users#new'
  
  get 'about', to: 'pages#about'
  
  root 'pages#home'

end
