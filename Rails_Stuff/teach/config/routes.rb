Rails.application.routes.draw do
  resources :hits

  devise_for :users
  root 'home#index'
    

end
