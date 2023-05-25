Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'posts#index'
  resources :posts
  resources :comments

  get 'posts/:id', to: 'posts#show', as: 'post_show'
end
