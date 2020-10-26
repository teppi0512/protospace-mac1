Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  get 'prottypes/index'
  get 'messages/index'
  root to: "prototypes#index"
end
