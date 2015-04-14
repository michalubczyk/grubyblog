Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "posts#index"

  resources :posts, only: [:index, :show]

  resources :categories, only: [:show] do
    resources :posts, only: [:index, :show] do
      resources :photos
    end
  end
end
