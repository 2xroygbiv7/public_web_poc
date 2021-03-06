Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :products, except: [:show]
  get 'product/:id', to: 'products#show', as: 'product_show'
  get 'categories', to: 'categories#index', as: 'categories'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
