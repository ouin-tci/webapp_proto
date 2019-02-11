Rails.application.routes.draw do
  resources :comments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user_sessions
  get 'login' => 'user_sessions#new', :as => :login
  post 'auth' => 'user_sessions#create', :as => :auth
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'users/password/new' => 'users#password_new'
  post 'users/password/reset' => 'users#password_reset'

  root :to => 'user_sessions#new'
end
