Rails.application.routes.draw do

  root to: "cheerups#index"
  resources :cheerups do
    resources :comments
  end
  resources :cheerups do
    member do
      post "score_up"
  end
  end
end
