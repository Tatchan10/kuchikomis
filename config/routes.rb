Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users do
    member do
      get :like_reviews
    end
    collection do
      get :search
    end
  end
    
  resources :reviews, only: [:index, :new, :create, :destroy]
  resources :likes,only: [:create, :destroy]
  
  resources :products, only: [:id, :index, :show]
end
