Rails.application.routes.draw do
  devise_for :users

  root "public#index"

  get 'home', to: "public#index"
  get 'home/last_month', to: "public/last_month#index"
  get 'home/last_month/:id', to: "public/last_month#show"
  get 'home/:id', to: "public#show"

  resources :policemen do
    resources :occurrences
    collection do
      get :last_month, to: "policemen/last_month#index"
    end
  end
end
