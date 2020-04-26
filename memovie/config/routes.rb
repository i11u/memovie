Rails.application.routes.draw do
  get 'welcome/index'

  get 'search', to: 'articles#search', as: :search

  resources :articles
  
  root 'welcome#index'
end
