Rails.application.routes.draw do
  resources :ouis
  resources :frequencies
  resources :clients
  resources :networks

  get '/networks/test' => 'networks#test', as: :test
  get '/networks/load' => 'networks#load', as: :load
  get '/networks/:id/attack' => 'networks#attack', as: :attack


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
