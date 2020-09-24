Rails.application.routes.draw do
  
  devise_for :users
  root to: 'trainings#index'
  resources :trainings, only: [:index, :new, :create, :destroy, :edit]
  
  resources :trainings do
    resources :participants, only: [:new, :create, :destroy]
  end
  resources :participants, only: [:index, :destroy]

end
