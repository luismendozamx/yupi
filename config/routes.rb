Rails.application.routes.draw do
  root to: "static_pages#home"

  devise_for :users
  devise_scope :user do
    get 'registro', to: 'devise/registrations#new', as: :register
    get 'login', to: 'devise/sessions#new', as: :login
    get 'logout', to: 'devise/sessions#destroy', as: :logout
  end

  get 'dashboard/home', as: :dashboard_home
end
