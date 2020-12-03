Rails.application.routes.draw do
  resources :credit_card2s
  resources :insumos
  resources :states
  resources :travels
  resources :combis
  resources :sites
  resources :ways
  resources :drivers
resources :tickets, skip: [:new, :create, :show]
  devise_for :users
 # resources :tickets do
  #  collection do

   #   get 'buy_ticket' => 'tickets#buy_ticket', as: 'buy_ticket'
   # end
  #end
  
  root 'home#index'
  get 'home/about'
  #get 'ticket/index'
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
  get 'drivers/show/:id', to: 'drivers#show', as: 'show_driver'
  get 'drivers/destroy/:id', to: 'drivers#destroy', as: 'destroy_driver'
  get 'tickets/new/:travel_id', to: 'tickets#new', as: 'new_ticket_new'
  get 'tickets/post/:travel_id', to: 'tickets#create', as: 'create_new_ticket'
  
  get 'tickets_search', to: 'tickets#search', as: 'search_travels'
end
