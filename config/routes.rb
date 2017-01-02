Rails.application.routes.draw do
  root to: "dashboard#index"

  scope 'control' do
    root to: "dashboard#index"

    resources :cities, :banks, :branches, :faces, :assignments, :users, :roles, :questions, :answers
    resources :bank_accounts do
      member do
        get 'change_status'
      end
    end
    resources :companies do
      member do
        get 'faq'
        get 'edit_faq'
      end
    end

    get 'dashboard', to: 'dashboard#index'
  end

  devise_for :users, path_names: {
      sign_up: ''
  }
end