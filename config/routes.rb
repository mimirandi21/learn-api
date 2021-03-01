Rails.application.routes.draw do
  match 'politics' => 'politics#cors_preflight', via: [:options]
  resources :generals
  resources :politics
  resources :sports_teams
  resources :capitals

  get 'sports_teams/getSportsTeams', to: 'sports_teams#getSportsTeams'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
