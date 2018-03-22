Rails.application.routes.draw do
  resources :events
	devise_for :tattooers
	devise_for :users
	resources :tattooers
	resources :studios
	resources :users

	root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
