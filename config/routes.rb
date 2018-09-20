Rails.application.routes.draw do
  devise_for :users, :path_prefix =>'auth'
	resources :posts
	  authenticated :user do
    root 'posts#index', as: :authenticated_root
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'user/show', :to => 'users#show'
end
