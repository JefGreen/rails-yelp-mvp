Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # show all restaurants
  # create a new restaurant
  # find a restaurant
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[index new create]
  end

  namespace :admin do
    resources :restaurants do
      resources :reviews
    end
  end
end
