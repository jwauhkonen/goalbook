Rails.application.routes.draw do
  root "users#show"
  
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :goals, only: [:new, :create, :edit, :update, :destroy]
end
