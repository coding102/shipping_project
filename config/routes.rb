Rails.application.routes.draw do
  devise_for :users
    resources :boat_jobs, :boats, :jobs
    
    resources :jobs do 
        resources :boat_jobs, :boats, :jobs
    end
    
    
    root "jobs#index"
    
    get '/about', to: 'pages#about'
    
    devise_scope :users do
        get '/users/sign_out' => 'devise/sessions#destroy'
    end
    
    
    
end
