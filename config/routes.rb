Rails.application.routes.draw do

  # configs for Devise
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register', sign_up: 'ing' }
  devise_scope :user do
    # When user online
    authenticated :user do
      root 'tasks#index', as: :authenticated_user
    end

    # When user offline
    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
