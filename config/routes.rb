Rails.application.routes.draw do
  resources :generals
  resources :politics
  resources :sports_teams
  resources :capitals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
