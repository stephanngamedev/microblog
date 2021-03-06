Rails.application.routes.draw do
	root 'home#index'

	get '/', to: 'home#index', as: :home

	post '/posts', to: 'posts#create', as: :create_post

	get '/users/:username/profile', to: 'users#show', as: :user
	get '/users', to: 'users#index', as: :users
	post '/users/:username/follow', to: 'users#follow', as: :follow_user
	delete '/users/:username/unfollow', to: 'users#unfollow', as: :unfollow_user
	get '/users/:username/followers', to: 'users#followers', as: :followers
	get '/users/:username/following', to: 'users#following', as: :following

	devise_for :users
end
