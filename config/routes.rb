Rails.application.routes.draw do
  # get    "cocktails",          to: "cocktails#index"
  # get    "cocktails/new",      to: "cocktails#new", as: :new_cocktail
  # post   "cocktails",          to: "cocktails#create", as: :create_cocktail
  # get    "cocktails/:id",      to: "cocktails#show", as: :cocktail
  #  delete "cocktails/:id",      to: "cocktails#destroy", as: :destroy_cocktail

resources :cocktails, only: [:new, :index, :update, :show, :create] do
  resources :doses, only: [:new, :create, :destroy] do
    resources :ingredients, only: [:new, :create]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
