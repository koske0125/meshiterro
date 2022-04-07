Rails.application.routes.draw do

  resources :users, onlu: [:show, :edit]
  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "homes#top"
  get '/homes/about' => 'homes#about', as: 'about'

end