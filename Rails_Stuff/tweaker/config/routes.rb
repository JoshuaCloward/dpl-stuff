Rails.application.routes.draw do

  resources :hits

  devise_for :users
  root 'static_pages#index'
end
