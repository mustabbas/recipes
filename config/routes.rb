Rails.application.routes.draw do
  devise_for :users

  get 'home/index'
  root :to => "home#index"
  resources :users, only: [:index, :show] do
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/recipes/", to: "recipes#index", as: "all_recipes"
  get "/recipes/show/:id", to: "recipes#show", as: "recipes_show"
  get "/recipes/new", to: "recipes#new", as: "new_recipes"
  post '/recipes/create', to: 'recipes#create', as: "create_recipes"
  delete '/recipes/:id/destroy', to: 'recipes#destroy', as: "destroy_recipes"
end
