Rails.application.routes.draw do
  resources :jobs
  resources :shots do 
  	resources :comments 
  	member do 
  		put 'like', to: "shots#like"
  		put 'unlike', to: "shots#unlike"
  	end
  end
 
  devise_for :users, controllers: { registrations: 'registrations' }
  
  root 'shots#index'

  put 'jobs', to: "jobs#view"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
