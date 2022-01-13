Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home' do
    get '/' => 'messages#new'
  end
  resources :messages, only: [:create]
  get '/admin' => 'admins#admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
