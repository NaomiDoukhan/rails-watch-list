Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  # get 'lists', to: 'lists#index', as: 'lists'

  # # Un utilisateur peut voir les détails d’une liste donnée et son nom
  # get 'lists/:id', to: 'lists#show', as: 'list'

  # # Un utilisateur peut créer une nouvelle liste
  # get 'lists/new', to: 'lists#new', as: 'new_list'
  # post 'lists', to: 'lists#create'



  # Tes autres routes...

  # La route par défaut
  root 'lists#index'
end
