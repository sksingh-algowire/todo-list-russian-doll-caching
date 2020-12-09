Rails.application.routes.draw do
  resources :lists do
    resources :todos
  end

  resources :categories do
    resources :products
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  # root to: "lists#index"
  root to: "categories#index"
end
