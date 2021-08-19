Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do #👈🏻 we can set default response format of the block
    namespace :v1 do
      resources :vehicles, only: [:create, :destroy, :update, :show, :index]
      resources :service_requests, only: [:create, :destroy, :update, :show, :index] do
        resources :service_offers, shallow: :true, only: [:create, :destroy, :update, :show, :index]
      end
   
      
      resource :session, only: [:create, :destroy]
      get("/current_user", to: "sessions#get_current_user")

      resources :users, only: [:create] do
        resources :service_requests, only: [:index]
        resources :service_offers, only: [:index]

        resources :vehicles, only: [:index]
        get :current, on: :collection

      end


    end
      
      
  end
end
