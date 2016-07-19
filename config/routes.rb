Rails.application.routes.draw do
  resources :user_sessions
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  resources :users, only: [:create, :destroy, :edit, :new, :update]
  root "welcome#index"
  resources :categories
end
