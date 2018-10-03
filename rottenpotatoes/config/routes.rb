Rottenpotatoes::Application.routes.draw do
  
  # map '/' to be a redirect to '/movies'
  root 'movies#index'
  #root :to => redirect('/movies')
  resources :movies
end
