# frozen_string_literal: true

Rails.application.routes.draw do
  # devise関連
  devise_scope :admins do
    devise_for :admins, controllers: {
      registrations: 'admins/registrations',
      passwords: 'admins/passwords',
      sessions: 'admins/sessions'
    }
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    sessions: 'users/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # rootパス
  root 'homes#top'
  # aboutパス
  get 'homes/about'

  # adminサイトrouting
  namespace :admins do
    get 'homes/top' => 'homes#top', as: 'top'
  end

  namespace :admins do
    resources :admins, only: %i[show edit update]
  end

  namespace :admins do
    resources :events, only: %i[index edit create update destroy]
  end

  namespace :admins do
    resources :users, only: %i[index edit show update]
  end

  # userサイトrouting
  namespace :users do
    get 'homes/top' => 'homes#top', as: 'top'
  end

  resources :users, only:[:show, :edit, :update]

  namespace :users do
  resources :admins, only:[:show]
  end
end
