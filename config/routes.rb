Rails.application.routes.draw do
  devise_for :users
  #get 'todos/new', to: 'todos#new'
  #get 'todos/:id', to: 'todos#show', as: 'todo'
  #post 'todos', to: 'todos#create'
  #get 'todos', to: 'todos#index'

  resources :todos

  get 'pages/home'
  get 'pages/contact'

  get 'about', to: 'pages#about'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
