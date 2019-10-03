Rails.application.routes.draw do
  devise_for :users
  resources :products, except: [:show]
  get 'product/:id', to: 'products#show', as: 'product_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
