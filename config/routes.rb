Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "create" => "sessions#create"
  resources :users, only: [:new, :show, :create, :show]

end
