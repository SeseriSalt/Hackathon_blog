Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#index'
  get  'homes/index'
  get  "homes/fav_index", :to => "homes#fav_index", as: 'ranking'
  resources 'blogs'
  resources 'mypages'
  # r 'application#hello'
  
  
  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail", as: 'user_profile'
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
end