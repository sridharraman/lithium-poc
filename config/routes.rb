LithiumPoc::Application.routes.draw do
  resources :archived_telematics_data

  resources :current_telematics_data

  resources :shifts

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :shifts do
        collection do
          get 'index'
        end
      end

      resources :trips do
        member do
          get 'show'
        end
      end

      resources :trip_summaries do
        member do
          get 'create'
        end
      end
    end
  end

  resources :archived_vehicle_positions
  resources :current_vehicle_positions
  resources :trip_summaries
  resources :trips
  resources :vehicles

  root "pages#home"
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"


  devise_for :users

  namespace :admin do
    root "base#index"
    resources :users

  end

end
