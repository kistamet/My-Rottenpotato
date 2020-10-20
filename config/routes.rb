Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles
  resources :movies do
  resources :reviews
  end
  root :to => redirect('/movies')
  get 'auth/:provider/callback' , to: "sessions#create" 
  get 'sign_out', to: "sessions#destroy" , as: 'sign_out'
  get  'auth/twitter', :as => 'login'
  get  'auth/:provider' => 'sessions#new'
  post 'all_destroy' => 'movies#all_destroy' , :as => 'all_destroy'
  post '/movies/show_tmdb' => 'movies#search_tmdb'
end
