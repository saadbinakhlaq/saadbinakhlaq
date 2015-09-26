Rails.application.routes.draw do
  resources :resumes
  devise_for :users
  root to: 'home#index'
end
