Rails.application.routes.draw do
  scope "/okonomiyakidb" do
    get "tops/help"
    resources :tops, only: [:index]
    resources :users, shallow: true do
      resources :comments
      resources :discusses
      resources :products, shallow: true do
        resources :productMaterials
        resources :productTechniques
        resources :productPerformances
      end
      resources :techniqueCategories do
        resources :bakes
        resources :cuts
        resources :otherTechniques
      end
      resources :materialCategories do
        resources :powders
        resources :liquids
        resources :seasonings
        resources :otherMaterials
      end
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
