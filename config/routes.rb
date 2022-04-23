Rails.application.routes.draw do
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
