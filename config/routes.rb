Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # A visitor can see the list of all restaurants.
  # get 'restaurants', to: 'restaurants#index', as: :restaurants
  # # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'
  # # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # A visitor can add a new review to a restaurant

  resources :restaurants, only: [ :index, :show, :edit, :create, :new, :update] do
    resources :reviews, only: [ :new, :create ]
  end

  # resources :restaurants do
  #   resources :reviews
  # end
    # GET "restaurants/38/reviews/new"
    # POST "restaurants/38/reviews"
end
