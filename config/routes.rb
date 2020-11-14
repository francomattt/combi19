Rails.application.routes.draw do
  resources :sites
  devise_for :users
  root 'home#index'
  get 'home/about'
  
end
