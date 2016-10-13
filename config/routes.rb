Rails.application.routes.draw do
  root :to => 'users#index'
  resources :user_sessions
  resources :users do
    member do
      get :activate
    end
  end
  resources :password_resets

  get 'login' => 'user_sessions#new', as: :login
  get 'logout' => 'user_sessions#destroy', as: :logout
end
