Rottenpotatoes::Application.routes.draw do
  
  # map '/' to be a redirect to '/movies'
  root 'movies#index'
  #root :to => redirect('/movies')
  resources :movies do
    member do
      get "same_director", {to: "movies#same_director", as: :same_director}
    end
    
  end
 
  #get "/movies/:id/same_director", {to: "movies#same_director", as: :same_director}
end
