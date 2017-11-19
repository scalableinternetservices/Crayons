Rails.application.routes.draw do
  devise_for :user_devises
  # resources :profiles
  get '/profiles/:id', to: 'profiles#show', as: 'profile'

  get 'captcha/captcha'

  get 'pages/home'

  root 'pages#home'

  root to: "photos#index"



  resources :photos
  resources :annotations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
