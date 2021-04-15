Rails.application.routes.draw do
  devise_for :users
  resources :friends
  #get 'home/index'
  get 'home/about'
  #root 'home#index'  #root ile direk ana sayfa yapıyoruz.  
  root 'friends#index'
  get 'home/my'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
