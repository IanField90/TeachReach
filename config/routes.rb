TeachReach::Application.routes.draw do
  get 'subjects/index'

  # Specify host for URL
  default_url_options :host => ENV['CANONICAL_HOST']

  devise_for :users
  root to: "home#index"

  resources :subjects
  resources :topics

end
