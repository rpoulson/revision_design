RevisionDesign::Application.routes.draw do
  get "beanstalk/navigation"
  post "beanstalk/navigation"
  get "beanstalk/create"
  get "creation_page/create"
    get "creation_page/save"
    post "creation_page/save"
	get "creation_page/load"
	post "creation_page/load"
    get "creation_page/show"
    
	get "creation_page/error"
	post "creation_page/create"
	post "beanstalk/create"
  get "manage_page/display"
	match '/beanstalkdisplay', to: 'beanstalk#display'
    match '/beanstalkdisplay/:id', to: 'beanstalk#display'
    
    get "beanstalk/load"
    post "beanstalk/load"
    get "beanstalk/save"
    post "beanstalk/save"
    get "beanstalk/show"
    post "beanstalk/show"

  get "original/navigation"
  post "original/navigation"
    
  post "manage_page/display"

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
