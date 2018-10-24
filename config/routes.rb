# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  resources :work do
    collection do
      post :button_run_web_autotests
    end
  end
end
