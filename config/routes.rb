Rails.application.routes.draw do

  root to: 'pages#home'

  resources :suscribers, only: [:create]

end
