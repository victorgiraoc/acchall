Rails.application.routes.draw do
  get 'chats/show'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end