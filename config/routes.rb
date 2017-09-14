Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update]
      resources :restaurants, only: [:index, :create, :destroy]
      resources :dishes, only: [:index, :create, :show]
    end
  end
end
