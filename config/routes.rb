Rails.application.routes.draw do
  resources :events
  resources :users
  resources :comments
  resources :create_comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
