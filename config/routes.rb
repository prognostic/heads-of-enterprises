Rails.application.routes.draw do
  root to: "dashboard#index"

  scope 'control' do
    root to: "dashboard#index"

    resources :cities, :banks, :branches, :companies, :faces, :assignments, :users
    resources :bank_accounts do
      member do
        get 'change_status'
      end
    end

    get 'dashboard', to: 'dashboard#index'
  end

  devise_for :users, path_names: {
      sign_up: ''
  }
end