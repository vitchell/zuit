Zuit::Application.routes.draw do
  root :to => "home#index"

  get "test" => "home#test"
  get "cart" => "home#cart"
end
