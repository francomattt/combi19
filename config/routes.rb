Rails.application.routes.draw do
  resources :insumos
  resources :states
  resources :travels
  resources :combis
  resources :sites
  resources :ways
  resources :drivers
  devise_for :users
  root 'home#index'
  get 'home/about'
  devise_scope :registrations do
    get 'new_driver', to: "devise/registrations#new_driver"
  end
  #falla el method: :delete en las vistas, asi que agregamos rutas para poder hacer la incocacion al metodo destroy
  get 'sites/destroy/:id', to: 'sites#destroy', as: 'destroy_site' 
  get 'ways/destroy/:id', to: 'ways#destroy', as: 'destroy_way' 
  get 'combis/destroy/:id', to: 'combis#destroy', as: 'destroy_combi'
  get 'travels/destroy/:id', to: 'travels#destroy', as: 'destroy_travel'
  get 'drivers/index', to: 'drivers#index'
  get 'insumos/destroy/:id', to: 'insumos#destroy', as: 'destroy_insumo'
end
