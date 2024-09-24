Rails.application.routes.draw do
  root "static_pages#home"
  get    "/signup",  to: "users#new"
  get    "/login",   to: "sessions#new"
  get    "search",   to: "static_pages#search"
  get    "creature_search",   to: "creatures#search", as: "creature_search"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
  resources :creatures
  resources :spots, only: [:index]
  resources :prefectures, only: [:show] do
    resources :spots, only: [:show]
  end
end
