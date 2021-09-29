Rails.application.routes.draw do
  scope "/okonomiyakidb" do
    get "tops/help"
    resources :tops, only: [:index]
    resources :users
    resources :products
    resources :methods
    resources :materials
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
