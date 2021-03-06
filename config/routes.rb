Rails.application.routes.draw do


  #get '/' => 'post#index'
  root 'post#front'

  ############
  ## POST
  ############
  get '/post/index' => 'post#index'
  get '/post/create' => 'post#create' 
  #== get '/post/create'
  
  get '/post/show/:id' => 'post#show'
  
  #get '/post/modify/:id' => 'post#modify'
  get '/post/update/:id' => 'post#update'
  
  get '/post/destroy/:id' => 'post#destroy'
  
  ############
  ## USER
  ############
  get '/user/index' => 'user#index'
  get '/user/new' => 'user#new'
  get '/user/create' => 'user#create'
  
  get '/user/modify/:id' => 'user#modify'
  get '/user/update/:id' => 'user#update'
  
  get '/user/destroy/:id' => 'user#destroy'
  
  get '/user/login'
  get '/user/login_process'
  get '/user/logout'
  
  
  ############
  ## LOTTO
  ############
  get 'lotto/index'

  get 'lotto/show'

  ############
  ## Artii
  ############
  get 'artii/index'

  get 'artii/show'
  
  ############
  ## Asked
  ############

  get 'asked/index'
  
  get 'asked/show'

  get 'asked/sign_up'
  get 'asked/sign_up_process'

  get 'asked/sign_in'
  get 'asked/sign_in_process'
  get 'asked/logout'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
