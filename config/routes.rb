Rails.application.routes.draw do
  root "static_pages#home"
  get    "/help",    to: "static_pages#help"
  get    "/about",   to: "static_pages#about"
  get    "/contact", to: "static_pages#contact"
  get    "/signup",  to: "users#new"
  get    "/login",   to: "sessions#new"
  get    "search",  to: "static_pages#search"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
  resources :prefectures, only: [:show] do
    resources :spots, only: [:index, :show]
  end
end
