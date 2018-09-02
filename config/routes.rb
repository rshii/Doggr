Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'breeds#index'
  post 'breeds/toggleFavorite' => 'breeds#toggleFavorite'
  get 'breeds/seed' => 'breeds#seed'
  resources :breeds
end
