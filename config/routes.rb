Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :skills
  resources :users , only: :show
  resources :bookings, only: [ :show, :new, :create, :index ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
