Rails.application.routes.draw do
  root 'pedidos#index'
  resources :pedidos

  get 'pedidos/listado' => 'pedido#listado'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
