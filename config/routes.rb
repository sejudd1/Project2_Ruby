Rails.application.routes.draw do

  get "users" => "users#index"
  get "users/new" => "users#new"
  post "users" => "users#create"
  get "users/:id" => "users#show", as: :user 
  
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "songs/" => "songs#index", as: :songs
  get "songs/new" => "songs#new", as: :new_song
  post "songs" => "songs#create"
  get "songs/:id" => "songs#show", as: :song
  get "songs/:id/edit" => "songs#edit", as: :edit_song 
  patch "songs/:id" => "songs#update"
  delete "songs/:id" => "songs#destroy"

  get "comments/new" => "comments#new", as: :new_comment
  post "comments" => "comments#create"
  get "comments/:id" => "comments#show", as: :comment
  get "users/:user_id/songs/:song_id/comments" => "comments#index"
  post "users/:user_id/songs/:song_id/comments" => "comments#create"
  get "users/:user_id/songs/:song_id/comments/new" => "comments#new"
  get "users/:user_id/songs/:song_id/comments/:id/edit" => "comments#edit", as: :edit_comment
  patch "users/:user_id/songs/:song_id/comments/:id" => "comments#update"
  put "users/:user_id/songs/:song_id/comments/:id" => "comments#update"
  delete "users/:user_id/comments" => "comments#destroy"

  get "/users/:user_id/songs/:song_id/comments(.:format)" => "comments#index"
  post  "/users/:user_id/songs/:song_id/comments(.:format)" => "comments#create"
  get "/users/:user_id/songs/:song_id/comments/new(.:format)" => "comments#new"
  get "/users/:user_id/songs/:song_id/comments/:id/edit(.:format)" => "comments#edit"
  get "/users/:user_id/songs/:song_id/comments/:id(.:format)" => "comments#show"
  patch "/users/:user_id/songs/:song_id/comments/:id(.:format)" => "comments#update"
  put "/users/:user_id/songs/:song_id/comments/:id(.:format)" => "comments#update"
  delete  "/users/:user_id/songs/:song_id/comments/:id(.:format)" => "comments#destroy"
  
  get "/users/:user_id/songs(.:format)" => "songs#index"
  post  "/users/:user_id/songs(.:format)" => "songs#create"
  get "/users/:user_id/songs/new(.:format)" => "songs#new"
  get "/users/:user_id/songs/:id/edit(.:format)" => "songs#edit"
  get "/users/:user_id/songs/:id(.:format)" => "songs#show"
  patch "/users/:user_id/songs/:id(.:format)" => "songs#update"
  put "/users/:user_id/songs/:id(.:format)" => "songs#update"
  delete  "/users/:user_id/songs/:id(.:format)" => "songs#destroy"
  
  get "/users" => "users#index"
  post  "/users" => "users#create"
  get "/users/new" => "users#new"
  get "/users/:id/edit(.:format)" => "users#edit"
  get "/users/:id(.:format)" =>  "users#show"
  patch "/users/:id(.:format)" =>  "users#update"
  put "/users/:id(.:format)" => "users#update"
  delete  "/users/:id(.:format)" => "users#destroy"
  get "/" => "sessions#new"
 
  #match "songs/upload", :as => "upload"
  #match "songs/delete", :as => "delete"
 
  # root :to => "songs#index"

  # delete "/comments" => "comments#destroy"

  resources :users do 
    resources :songs do
      resources :comments
    end
  end
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'sessions#new'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
