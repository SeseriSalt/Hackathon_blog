Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get  'homes/index'
  resources 'blogs'
  resources 'mypages'
  # r 'application#hello'
end
