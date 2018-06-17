Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :recipes do
    resources :likes, only: %i[create destroy]
  end
  
  root 'welcome#index'
end
