Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  	resources :events
	devise_for :tattooers
	devise_for :users
	resources :tattooers
	resources :studios
	resources :users

	root to: 'home#index'
end
