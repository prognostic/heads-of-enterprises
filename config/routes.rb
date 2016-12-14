Rails.application.routes.draw do
  root to: "dashboard#index"

  scope 'control' do
    root to: "dashboard#index"
    resources :cities, :banks, :branches, :companies, :faces, :bank_accounts, :assignments
    get 'dashboard', to: 'dashboard#index'
  end

  devise_for :users, path_names: {
      sign_up: ''
  }
end