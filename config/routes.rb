Zuit::Application.routes.draw do
	
  root :to    => "home#index"

  get "test"  => "home#test"
  get "cart"  => "home#cart"
  get "item"  => "home#item"
  get "added" => "home#upsell"

end
