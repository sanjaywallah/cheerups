Rails.application.routes.draw do

  root to: "cheerups#index"
  resources :cheerups do
    resources :comments
  end
end
