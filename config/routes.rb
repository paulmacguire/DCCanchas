# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :usuarios, controllers: {
    registrations: 'usuarios/registrations',
    sessions: 'usuarios/sessions'
  }
  resources :usuarios
  resources :resenas
  resources :reservas
  resources :canchas do
    resources :reservas, only: %i[new create]
  end
  resources :canchas do
    resources :resenas, onlu: %i[new create]
  end
  resources :conversations do
    resources :messages
  end
  root 'home#index'
  get 'home', to: 'home#index'
end
