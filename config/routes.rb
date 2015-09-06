Rails.application.routes.draw do
  
  resources :users

  root 'static_pages#home'
  get 'static_pages/home'
  get 'address' => 'address#index'
  post 'address' => 'address#create'
  post 'login'   => 'session#create'
  get 'logout' => 'session#destroy'


end
