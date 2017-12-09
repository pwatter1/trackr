Rails.application.routes.draw do  
  resources :goals
  resources :runninglogs
  resources :runninglog

  root "pages#index" 
  
  get "goal", to: "goals#index"
  get 'auth/facebook/callback' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
  get 'auth/failure' => 'sessions#failure'
  get 'auth/facebook', :as => 'login'
  get "runninglog", to: "runninglogs#show"
  get 'single_show_runninglog', to: "runninglogs#single_show_runninglog"
  
end
