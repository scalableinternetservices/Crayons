Rails.application.routes.draw do
  resources :photos
  root 'pages#home'
  get 'pages/home'

  get 'pages/gallery'

  get 'pages/about'

  get 'pages/profile' 

  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
