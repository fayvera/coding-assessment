Rails.application.routes.draw do
  resources :events, only: [:create, :new, :update, :show, :index]
  resources :users, only: [:create] #with login functionality, this would have more
  # with login, there would be sessions
  resources :comments, only: [:new, :create, :show, :update, :delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
