Rails.application.routes.draw do
  resources :dashboard, only: :index
  resources :books
  resources :categories
  get 'dashboard/search'
  get 'dashboard/category_list'
  root to: 'dashboard#index'
end
