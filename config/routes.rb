Rails.application.routes.draw do
  # root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :workspaces do
    resources :workspace_vendors
    resources :workspace_members
  end
  resources :sessions
  root "home#landing"
end
