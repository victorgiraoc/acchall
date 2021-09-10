Rails.application.routes.draw do
  root to: "chats#show"
  get 'chats/show'
  resources :users
  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
