Rails.application.routes.draw do
      resources :projects
      root 'site#index'
      get '/about' => 'site#about'
end
