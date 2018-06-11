Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :recipes
  
  root 'welcome#index'
end
