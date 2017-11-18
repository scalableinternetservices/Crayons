Rails.application.routes.draw do
  get 'captcha/captcha'

  get 'pages/home'

  root 'pages#home'
  
  root to: "photos#index"
  
  devise_for :user_devises
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
