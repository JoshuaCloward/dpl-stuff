Rails.application.routes.draw do
  resources :questions
  root 'site#index'
     get '/questionare', to: 'questions#questionare', as: :questionare
end
