Rails.application.routes.draw do
  root 'bank_accounts#index'

  scope 'control' do
    resources :cities, :banks, :branches, :companies, :faces, :bank_accounts, :assignments
  end

  devise_for :users, path_names: {
      sign_up: ''
  }
end
