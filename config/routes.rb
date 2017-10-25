Rails.application.routes.draw do
 


  mount RailsAdmin::Engine => '/supersaiyan', as: 'rails_admin'
  
  resources :appointments
  resources :trainer

  # get 'trainers/show'
  # get 'trainers/index'

  resources :user
  resources :charges

    

  
  devise_for :users
  # get 'home/show'

  get 'features/howitworks' 
  get 'features/fitness' 

  root 'home#index'


  # devise_for :users, path: 'users', controllers: { sessions: "users/sessions" etc....}
  devise_for :trainers, path: 'trainers', 
      controllers: { 
         registrations: 'trainers/registrations'
      }

# Redirect all other routes to root
  # match '*path', to: 'home#index', via: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
