Rails.application.routes.draw do
  root 'homes#show'

  resources :items, only: [:index, :create, :edit, :show, :update, :destroy] do
    collection do
      patch 'update_name'
    end

  end


# put 'item:id', to: 'items#update_name'

  resources :stores, only: [:index, :edit, :create, :update, :destroy] do
    resources :zones, only: [:create, :update, :destroy]
  end

end
