Rails.application.routes.draw do
  get 'session/login'
  post 'session/create'
  get 'session/logout'
  resources :users
  root 'calc#input'
  resources :posts

  get 'calc/view'
  get 'calc/input'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
