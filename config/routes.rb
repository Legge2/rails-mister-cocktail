Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   resources :cocktails, only: [ :new, :create, :index, :show, :update, :edit] do
    resources :doses,   only: [ :new, :create]
    resources :reviews, only: [ :new, :create]
  end
  resources :doses, only: [ :destroy]

  get 'cocktails', to: 'cocktails#index', as: :reviews
end
