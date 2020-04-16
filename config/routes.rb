Rails.application.routes.draw do
  scope :auth do
    resource :user, only: [:create, :show]
    resource :session, only: [:create]
  end
end
