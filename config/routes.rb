Rails.application.routes.draw do
  root 'main#index'
  get 'main/index'
  
  get 'doctors/search'

  resources :doctors
  resources :clinics
end
