Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :collections

  resources :wines, only: %i[index show]

  resources :quizzes, only: %i[new create]

  get "quizzes/result", to: "quizzes#result"

  resources :profiles

  resources :users do
    resources :collections, only: %i[new create]
  end
end
