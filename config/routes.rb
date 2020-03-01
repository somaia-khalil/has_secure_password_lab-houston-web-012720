Rails.application.routes.draw do
  get 'sessions/new' 
  post 'sessions/create', to: "sessions#create"

  get 'sessions/create'

  get 'users/new' 
  post 'users/' , to: "users#create"
  
  get 'users/create'

  get 'users/welcome' , to: "users#welcome"
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
