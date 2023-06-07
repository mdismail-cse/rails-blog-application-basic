Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # get "/articles/:id/new", to: "articles#new"
  # get "/articles/edit", to: "articles#edit"

  resources :articles do
    resources :comments
  end
end
