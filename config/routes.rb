Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  root to: "pages#home"

  resources :wines, only: %i[index show]

  resources :quizzes, only: %i[new create] do
    collection do
      get :result
    end
  end

  resources :profiles do
    # /profiles/*
    collection do
      get :me
    end

    # /profiles/:id/*
    # member do
    # end
  end

  resources :users do
    resources :collections, only: %i[new create index show]
  end

  resources :collections, only: %i[new create] do
    member do
      post :add_wine
    end
  end

  resources :collection_wines, only: %i[destroy]
end
