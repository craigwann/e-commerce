Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
  root :to => 'products#index'
  resources :order_items
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
