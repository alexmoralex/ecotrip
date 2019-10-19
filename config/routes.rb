Rails.application.routes.draw do
  get 'trips/index'
  get 'trips/show'
  get 'trips/new'
  get 'trips/edit'
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
