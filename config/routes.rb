Rails.application.routes.draw do
  get 'page/index'
  root 'page#index'
  mount ActionCable.server => "/cable"
  resources :chatrooms
  resources :messages, only: [] do
    get :by_group, on: :collection
  end
end
