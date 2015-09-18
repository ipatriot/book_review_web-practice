Rails.application.routes.draw do

  root "books#index"

  resources :books, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :new, :create]
  end
end
