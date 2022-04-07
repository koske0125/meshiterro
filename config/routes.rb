Rails.application.routes.draw do

  devise_for :users
  root 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]

end