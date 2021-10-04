Rails.application.routes.draw do
  scope "/okonomiyakidb" do
    get "tops/help"
    devise_for :users
    resources :tops, only: [:index]
    resources :comments
    resources :discusses
    resources :products, shallow: true do
      resources :product_materials
      resources :product_techniques
      resources :product_performances
    end
    resources :technique_categories do
      resources :bakes
      resources :cuts
      resources :other_techniques
    end
    resources :material_categories do
      resources :powders
      resources :liquids
      resources :seasonings
      resources :other_materials
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
