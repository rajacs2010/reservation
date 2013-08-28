#################################################################################
#										#
#   File			: routes.rb					#
#   Project			: Reservation System				#
#   Description			: Maintain all the routes of the application	#
#										#
#										#
#################################################################################

Reservation::Application.routes.draw do

  get "searches/new"

  get "costs/new"

  get "costs/create"

  get "costs/edit"

  get "costs/update"

  get "costs/destroy"

  get "reservations/index"

  get "reservations/new" => "reservations#new", :as => "reservations/new"

  root :to => "home#new", :as => "home"

  get "trains/index"
  get "trains/new"
  get "stations/new"
  get "one_time_passwords/new"
  get "change_passwords/new"
  get "sessions/new"
  get "coach_details/new"

  resources :coach_details
  resources :coaches
  resources :home
  resources :routes
  resources :trains
  resources :forgot_passwords
  resources :change_passwords
  resources :one_time_passwords
  resources :users
  resources :sessions
  resources :stations
  resources :costs
  resources :availabilities
  resources :reservations
  resources :ticket_reservations
  resources :multilevels

  resources :users do
     get :autocomplete_user_email, :on => :collection
  end #  resources :users do

  resources :train_reservations do
    get :autocomplete_station_station_name, :on => :collection
  end #resources :train_reservations do

  get "routes_list" => "routes#routes_list", :as => "routes_list"
  get "home" => "home#index", :as => "home"
  get "forgot_password" => "forgot_passwords#new", :as => "forgot_password"
  get "one_time_password" => "one_time_passwords#new", :as => "one_time_password"
  get "change_password" => "change_passwords#new", :as => "change_password"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "login" => "sessions#new", :as => "login"
  get "logins" => "sessions#login", :as => "logins"
  get "admin_login" => "sessions#new", :as => "admin_login"
  get "sign_up" => "users#new", :as => "sign_up"
  get "route_home" => "stations#index", :as => "route_home"
  get "show_route" => "routes#show", :as => "show_route"
  get "station_list" => "stations#station_list", :as => "station_list"
  get "train_list" => "trains#train_list", :as => "train_list"
  get "train_home" => "trains#index", :as => "train_home"
  get "coach_list" => "coaches#coach_list", :as => "coach_list"
  get "search" => "ticket_reservations#search", :as => "search"
  get "ljksdfkjh1545a5sdf545" => "home#lightbox", :as => "lightbox"
  get "multilevel" => "multilevels#index", :as => "multilevel"
  get "check_box" => "multilevels#check", :as => "multi"
  get "sort_search" => "multilevels#sort", :as => "sort"
  
  post "forgot_password" => "forgot_passwords#check"
  post "one_time_password" => "one_time_passwords#check"
  post "change_password" => "change_passwords#change"
  post "search" => "reservations#search", :as => "search"

  match ':controller(/:action(/:id))(.:format)'

end  #Reservation::Application.routes.draw do
