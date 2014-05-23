TeachReach::Application.routes.draw do
  # Specify host for URL
  default_url_options :host => ENV['CANONICAL_HOST']

  devise_for :users
  root :to => "home#index"

end
