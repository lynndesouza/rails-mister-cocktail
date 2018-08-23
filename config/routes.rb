Rails.application.routes.draw do
  resources :cocktails, only: [:create, :index, :show, :new] do
  resources :doses, only: [:create]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doses, only: [:destroy]
end
