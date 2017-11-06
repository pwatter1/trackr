Rails.application.routes.draw do  
   resources :goals
  # root "pages#index" #, page: "index" # old
  root "pages#index" #, goals: "index"
  get "goal", to: "goals#index"
end
