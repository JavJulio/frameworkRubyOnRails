Rails.application.routes.draw do
  resources :personas
  resources :catsexos
  root 'personas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Index
  get '/personas', to: 'personas#index'

  # Crear Persona
  get '/personas/new', to: 'personas#new'
  post '/personas', to: 'personas#create'

  # Editar Persona
  get '/personas/:id/edit', to: 'personas#edit'
  put '/persona/:id', to: 'personas#update'

  # eliminar Persona
 delete '/persona/:id', to: 'personas#delete'

end
