Rails.application.routes.draw do
  root 'application#hello'
  
  root to: "photos#index"
  devise_for :user_devises
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
