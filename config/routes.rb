Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    resources :statements, except: %i(new edit)
    resources :categories, only: :index
  end
end
