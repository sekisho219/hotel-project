Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :contacts

resources :prefectures

resources :hotels do
  resources :reviews
  resources :reservations
end

root 'hotels#index'
end
