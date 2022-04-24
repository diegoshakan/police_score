Rails.application.routes.draw do
  get 'home', to: "public#index"
  get 'home/:id', to: "public#show"

  root "policemen#index"

  resources :policemen do
    resources :occurrences
    collection do
      get :last_month, to: "policemen/last_month#index"
    end
  end

  # namespace :policemen do
  #   get 'last_month', to: "last_month#index"
  # end
end
