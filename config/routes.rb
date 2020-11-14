Rails.application.routes.draw do
  resources :sites
  devise_for :users
  root 'home#index'
  get 'home/about'
  
  get 'sites/destroy/:id', to: 'sites#destroy', as: 'destroy_site' 
end
