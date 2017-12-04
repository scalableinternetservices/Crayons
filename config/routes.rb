Rails.application.routes.draw do

  devise_for :user_devises

  root 'pages#home'

  # resources :profiles
  #root to: "photos#index"

  get 'photos/index'
  
  get '/profiles/:id', to: 'profiles#show', as: 'profile'

  get 'captcha/captcha'

  get 'pages/home'

  get "/annotations/upvote " => "annotations#upvote", :as => 'upvote'

  get "/annotations/downvote " => "annotations#downvote", :as => 'downvote'

  resources :profiles
  
  resources :photos
  
  resources :annotations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
