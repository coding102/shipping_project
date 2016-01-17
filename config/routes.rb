Rails.application.routes.draw do
    resources :jobs do 
        resources :boat_jobs
    end
    
    
    root "jobs#index"
    
    
    
    
    
    
    
    
end
