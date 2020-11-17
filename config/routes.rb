Rails.application.routes.draw do
  resources :states
  resources :travels
  resources :combis
  resources :sites
  resources :ways
  devise_for :users
  root 'home#index'
  get 'home/about'
  
  #falla el method: :delete en las vistas, asi que agregamos rutas para poder hacer la incocacion al metodo destroy
  get 'sites/destroy/:id', to: 'sites#destroy', as: 'destroy_site' 
  get 'ways/destroy/:id', to: 'ways#destroy', as: 'destroy_way' 
  get 'combis/destroy/:id', to: 'combis#destroy', as: 'destroy_combi'
  get 'travels/destroy/:id', to: 'travels#destroy', as: 'destroy_travel'
end
