Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/gallery'

  get 'pages/about'

  get 'pages/profile'

  root 'pages#home'
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
