Rails.application.routes.draw do
  scope :auth do
    resources :users, only: [:create]
    resource :user, only: [:show, :update]
    resources :sessions, only: [:create]
  end
end
