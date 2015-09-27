Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :resumes, only: [:show]

  get '/resume' => 'resumes#show', as: :resume_page

  namespace :admin do
    resources :resumes
  end
end
