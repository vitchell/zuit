Zuit::Application.routes.draw do
  resources :customizations

  resources :orders

  resources :carts

  resources :suits

  resources :products

  resources :measurements

  resources :users

  root :to => "home#index"

  get "test" => "home#test"
  get "cart" => "home#cart"
end
