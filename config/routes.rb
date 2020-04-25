Rails.application.routes.draw do
  resources :users
  resources :bill_contributors
  resources :bills
  resources :follows
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
