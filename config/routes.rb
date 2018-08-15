# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :campaigns
  resources :characters do
    collection do
      get :genre
    end
  end
  resources :friendships do
    collection do
      get :search
      post :accept
      delete :decline
    end
  end
end
