# frozen_string_literal: true

Rails.application.routes.draw do
  resources :loan_departments
  resources :account_departments
  root 'banks#index'
  resources :branches
  resources :banks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: %i[new create destroy]
  get 'signup', to: 'banks#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
end
