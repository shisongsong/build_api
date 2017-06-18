Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :teachers, only: [:index, :destroy]
      resources :students, only: [:show]
    end
  end
end