Rails.application.routes.draw do
  resources :artists, only: [:index, :create, :new, :edit, :show, :update]
  resources :genres, only: [:index, :create, :new, :edit, :show, :update]
  resources :songs, only: [:index, :create, :new, :edit, :show, :update]
end
