Rails.application.routes.draw do
  resources :ouis
  resources :frequencies
  resources :clients
  resources :networks

  get '/networks/test' => 'networks#test', as: :test
  get '/networks/load' => 'networks#load', as: :load


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
