Rails.application.routes.draw do
  
  root 'static_pages#home'
  get 'static_pages/home'
  get 'address' => 'address_book#index'


end
