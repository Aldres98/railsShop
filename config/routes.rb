Rails.application.routes.draw do
  get 'carts/show'

devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  root to: "products#index"
  
end
