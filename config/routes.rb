Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :players, only: [:index, :create]
        resources :badges, only: [:index, :create]
        resources :fetches, only: [:index, :create]
      end
    end
end
