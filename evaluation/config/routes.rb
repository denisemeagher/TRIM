Rails.application.routes.draw do

  root "apprentice_evaluations#index"

  resources :apprentice_evaluations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
