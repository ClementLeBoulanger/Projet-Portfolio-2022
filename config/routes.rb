Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home' do
    get '/' => 'messages#new'
  end
  resources :messages, only: [ :create, :destroy ]
  resources :article, only: [ :create, :destroy ]
  get '/admin' => 'admins#admin' do
    get '/admin' => 'projet#new'
  end
  resources :projets, only: [ :create, :destroy ]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
