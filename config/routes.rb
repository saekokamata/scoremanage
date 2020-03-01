Rails.application.routes.draw do
  root to: 'subjects#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  
  resources :tests, only: [:show, :new, :create, :edit, :update]

  resource :subjects, only: [ :show] do
      member do
      get :index
      get :japanese
      get :math
      get :science
      get :social
    end
  end

end
