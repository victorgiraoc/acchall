Rails.application.routes.draw do
  root to: "chats#index"
  get 'users/index'
  resources :users  do
    resources :chats, only: [:index, :show, :create]
  end
  resources :sessions, only:[:new, :destroy, :create]
  resources :messages, only:[:create]
  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
