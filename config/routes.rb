Rails.application.routes.draw do
  scope "/okonomiyakidb" do
    get "tops/help"
    devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
    }
    root to: 'sessions#log_in'
    resources :accounts, shallow: true, only: [:index, :show] do
      resources :discusses, only: [:show, :new, :create, :edit, :destroy]
    end
    resources :tops, only: [:index]
    resources :comments, only: [:create, :destroy]
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
