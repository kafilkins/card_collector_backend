Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :collections, only: [:index, :create, :destroy]
      resources :cards, only: [:index, :create, :destroy]
    end
  end

end
