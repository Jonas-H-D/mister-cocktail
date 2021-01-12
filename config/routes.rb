Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :reviews
    resources :doses
    end
    resources :reviews do
      collection do
        get :top
      end
    end
end
