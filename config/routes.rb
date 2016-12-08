Rails.application.routes.draw do
  #root 'pages#main'

  scope 'control' do
    resources :cities, :banks, :branches, :companies, :faces, :bank_accounts
  end

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
