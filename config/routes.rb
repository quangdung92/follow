Thuchanh::Application.routes.draw do
  get "micropost/new"

  get "user/new"
  get "user/saved"

  get "post/new"
  get "post/show"

  get "welcome/index"
  get "welcome/sucess"
  get "welcome/edit"
  root :to => "welcome#index"
  get '/users/:id', :to => 'welcome#sucess', :as => "user"  
  
  match '/relations', to: 'relation#create', via: 'post'
  match '/relations/:id', to: 'relation#destroy', via: 'delete'
  resources :users
  resources :relations,  only: [:create, :destroy]
  resources :microposts
  resources :uploads
  
  get '/welcome/edit/:id', to: 'welcome#edit', as: 'welcome_edit'
  match '/welcome/edit/:id', to: 'welcome#edit', via: 'post'
  match '/login', to: 'welcome#create', via: 'post'
  match '/logout' => 'welcome#destroy', as: :logout
  match '/create', to: 'micropost#create', via: 'post'
  match '/signup', to: 'user#signup', via: 'post'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
