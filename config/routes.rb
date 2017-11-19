Rails.application.routes.draw do

  get '/profiles/:id', to: 'profiles#show'

  get 'captcha/captcha'

  get 'pages/home'

  root 'pages#home'

  root to: "photos#index"

  devise_for :user_devises
  resources :profiles
  resources :annotations
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
