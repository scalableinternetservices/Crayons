Rails.application.routes.draw do
  resources :human_capitals
  get 'human_capitals/worth'

  devise_for :user_devises

  # resources :profiles
  
  get '/profiles/:id', to: 'profiles#show', as: 'profile'

  get 'captcha/captcha'

  get 'pages/home'

  get "/annotations/upvote " => "annotations#upvote", :as => 'upvote'

  get "/annotations/downvote " => "annotations#downvote", :as => 'downvote'

  root 'pages#home'

  root to: "photos#index"

  resources :profiles
  
  resources :photos
  
  resources :annotations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
