Rails.application.routes.draw do
    
  
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, only: [:create, :destroy]
  #resources :user, only: [:show]
  resources :users, only: [:show]
  resources :friendships
  
  root 'welcome#index'
  get 'my_portfolio', to:"users#my_portfolio"
  #get 'search_stocks', to:'stocks#search'
  get 'search_stocks', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friends', to: 'users#search'
  #get 'add_friend_path', to: 'user#add_friend'
  post 'add_friend', to: 'users#add_friend'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
