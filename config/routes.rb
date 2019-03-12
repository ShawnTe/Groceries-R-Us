Rails.application.routes.draw do
  root 'homes#show'

  resources :items, only: [:index, :create, :show, :update, :destroy]

  resources :stores, only: [:index, :edit, :create, :update, :destroy] do
    resources :zones, only: [:create, :update, :destroy]
  end

end
