Rails.application.routes.draw do
  scope "/okonomiyakidb" do
    get "tops/help"
    get 'searches/material_show'
    get 'searches/product_search'
    get 'searches/material_search'
    get 'searches/technique_search'
    get 'searches/user_search'
    get 'searches/discuss_search'
    devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
    }
    root to: 'sessions#log_in'
    resources :accounts, only: [:show, :edit, :create, :destroy]
    resources :tops, only: [:index]
    resources :comments
    resources :discusses
    resources :products, shallow: true do
      resources :product_materials
      resources :product_techniques
    end
    resources :technique_categories, shallow: true do
      resources :bakes
      resources :cuts
      resources :other_techniques
    end
    resources :material_categories, shallow: true do
      resources :powders
      resources :liquids
      resources :seasonings
      resources :other_materials
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
