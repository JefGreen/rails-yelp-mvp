Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # show all restaurants
  # create a new restaurant
  # find a restaurant

  # read all restaurants
  get 'restaurants', to: 'restaurants#index'

  # read one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # create one restaurant
  # 1st request to get the form
  # 2nd request to post params
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # update one restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit'
  patch 'restaurants/:id', to: 'restaurants#update'

  # delete one restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'


  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
end
