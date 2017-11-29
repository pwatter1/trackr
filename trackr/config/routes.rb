Rails.application.routes.draw do  
  resources :goals

  root "pages#index" 
  
  get "goal", to: "goals#index"
  get 'auth/facebook/callback' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
  get 'auth/failure' => 'sessions#failure'
  get 'auth/facebook', :as => 'login'
  
end
