Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'
  resources :places do
    resources :comments do
      :create
      collection do
        patch :destroy
      end
    end
    resources :photos do
      :create
      collection do
        patch :destroy
        get :show
      end
    end
  end
  resources :users, only: :show
end
