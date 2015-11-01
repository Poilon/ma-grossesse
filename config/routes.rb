MaGrossesse::Application.routes.draw do

  devise_for :users
  root 'homes#index'

  resources :dashboards

end
