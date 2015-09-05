Rails.application.routes.draw do
  
  resources :users

  root 'static_pages#home'
  get 'static_pages/home'
  get 'address' => 'address_book#index'


end
