Rails.application.routes.draw do
  resources :projects, path: :projeto, only: :index
  resources :mains, path: :principal do
    post :contact, on: :collection #contact_mains_path
  end
  root to: 'mains#index'
end
