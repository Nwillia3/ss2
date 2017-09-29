Rails.application.routes.draw do
 


  mount RailsAdmin::Engine => '/supersaiyan', as: 'rails_admin'
  resources :appointments
  resources :trainers

  # get 'trainers/show'
  # get 'trainers/index'
  get 'users/show'

  devise_for :trainers
  devise_for :users
  get 'home/show'

  root 'home#index'

# Redirect all other routes to root
  # match '*path', to: 'home#index', via: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
