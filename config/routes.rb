Rails.application.routes.draw do
  root "policemen#index"

  resources :policemen do
    resources :occurrences
  end
end
