Rails.application.routes.draw do
  root 'homes#show'

  resources :items, only: [:index, :create, :edit, :show, :update, :destroy] do
    collection do
      patch 'update_name'
      patch 'update_location'
    end

  end
  put 'update_to_get', to: "items#update_to_get", as: :update_to_get

  resource :locations, only: [:destroy]

  resources :stores, only: [:index, :edit, :create, :update, :destroy] do
    resources :zones, only: [:create, :edit, :update, :destroy]
  end

  get 'get_drop_down_options', to: "items#get_drop_down_options"

  resources :lists, only: [:index, :show]
end
