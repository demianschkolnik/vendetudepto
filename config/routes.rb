Rails.application.routes.draw do
  root 'pedidos#index'
 
  get 'pedidos', to: 'pedidos#show'
  resources :pedidos do
    collection { post :validate }
  end

  get 'pedidos/listado' => 'pedidos#listado'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
