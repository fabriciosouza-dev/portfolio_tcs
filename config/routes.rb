Rails.application.routes.draw do
  resources :projects, path: :projeto, only: :index
  resources :mains do
    post :contact, on: :collection #contact_mains_path
  end

  root to: 'mains#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
