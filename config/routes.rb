Rails.application.routes.draw do
  resources :ouis
  resources :frequencies
  resources :clients


  get '/networks/test' => 'networks#test', as: :test
  get '/networks/load' => 'networks#load', as: :load
  get '/networks/kill' => 'networks#kill', as: :kill
  get '/networks/scan' => 'networks#scan', as: :scan
  get '/networks/report' => 'networks#report', as: :report
  get '/networks/:id/attack' => 'networks#attack', as: :attack

  resources :networks


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
