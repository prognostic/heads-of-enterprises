Rails.application.routes.draw do
  #root 'pages#main'

  resources :cities

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
