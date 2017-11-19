Rails.application.routes.draw do
  get 'annotation/new'

  get 'pages/home'

  root 'pages#home'
  
  root to: "photos#index"
  
  get "annotations/create"
  
  devise_for :user_devises
  
  resources :photos
  
  
  resources :annotations
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
