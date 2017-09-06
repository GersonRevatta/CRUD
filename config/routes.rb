Rails.application.routes.draw do
  

  get 'tareas/apiReport'
  #resources :tareas
  resources :tareas do
   resources :comentarios
  end
  namespace :api do 
    resources :tareas
  end 
  root 'tareas#index'

  #put "tareas/finalizar"
  #match 'tareas/finalizar/:id' => 'tareas#finalizar'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
