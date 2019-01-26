# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  post '/some_action' => 'work#some_action'

  resources :work do
    collection do
      post :web_autotest
      post :soap_autotest
      post :parallel_performance_autotest
      post :sequential_performance_autotest
    end
  end
end
