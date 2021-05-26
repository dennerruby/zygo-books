Rails.application.routes.draw do
  resources :books
  root to: 'books#index'
  devise_for :admins

end
