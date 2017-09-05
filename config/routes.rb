Rails.application.routes.draw do
  
  get 'comentarios/new'

  get 'comentarios/create'

  get 'comentarios/edit'

  get 'comentarios/update'

  get 'comentarios/destroy'

  get 'tareas/apiReport'
  #resources :tareas
  resources :tareas do
   resources :comentarios
  end
  root 'tareas#index'

  #put "tareas/finalizar"
  #match 'tareas/finalizar/:id' => 'tareas#finalizar'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
