Rails.application.routes.draw do
  devise_for :users

  resources :users
  get 'about' => 'welcome#about'
  get 'home' => 'welcome#index'
  root 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
