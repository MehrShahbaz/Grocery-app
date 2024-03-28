Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :categories
      resources :manufacturers
      resources :food_marts
      resources :products
    end
  end
end
