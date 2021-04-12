Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'static#home'
  resources :orders
  resources :invoices

  resources :prodcuts, only: [:index, :new, :create]
  get '/products/:id/description', to: 'products#description'
  get '/products/:id/invoice', to: 'products#invoice'
end
