Rails.application.routes.draw do
  resources :produtos
  resources :unidades
  resources :grupo_produtos
  resources :pessoas
  resources :enderecos
  resources :cidades
  resources :estados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
