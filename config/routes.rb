QchanApi::Application.routes.draw do
  resources :jobs, only: [:index, :show, :create, :update, :destroy]

  namespace :auth, module: nil, controller: :authentications do
    get :iframe
    get :authorize
    get :callback
  end
end
