Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :charities, only: [:show, :index] do
    resources :donations, only: [:new, :create] do
      resources :payments, only: :new
    end
  end
  
  get "/dashboard", to: "dashboard#show"

  resources :favourites, only: [:create, :destroy]

  ################################################ for testing alpaca
  get "/client", to: "alpaca#client"
  get "/client/new_order", to: "alpaca#new"
  post "/client", to: "alpaca#create"
  

end
