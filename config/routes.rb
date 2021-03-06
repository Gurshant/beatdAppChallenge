Rails.application.routes.draw do
  resources :expenses
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  root 'expenses#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
