Rails.application.routes.draw do
  scope :auth do
    resources :users, only: [:create]
    resources :sessions, only: [:create]
  end
end
