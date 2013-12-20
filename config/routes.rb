QchanApi::Application.routes.draw do
  resources :builds, only: [:show, :update]

  resources :jobs, only: [:index, :show, :create, :update, :destroy] do
    resources :builds, only: [:index, :create]
  end

  namespace :auth, module: nil, controller: :authentications do
    get :iframe
    get :authorize
    get :callback
  end
end
