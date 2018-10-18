Rails.application.routes.draw do
  resources :dashboard, only: :index
  resources :books, only: :show
  resources :categories, only: :show
  get 'dashboard/search'
  get 'dashboard/category_list'
  root to: 'dashboard#index'
end
