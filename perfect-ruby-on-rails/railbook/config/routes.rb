Rails.application.routes.draw do
  resources :fan_comments
  resources :reviews
  resources :authors
  resources :users
  resources :books
  match ':controller(/:action(/:id))', via: [:get, :post, :patch]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
