Rails.application.routes.draw do

  devise_for :users
  # Home
  get 'home/index'
  
  # Waste Company
  get 'trader_places/index'
  get 'trader_places/:id/selected' => 'trader_places#selected', :as => :selected_trader_place
  get 'new_emission_plant_registrations/index'
  
  # Agreement
  get 'individual_contracts/index'
  get 'emission_operator_contracts/index'
  
  # Manifest
  get 'waste_registrations/index'
  
  # Master
  get 'traders/index'
  get 'person_registrations/index'
  get 'permissions/index'
  
  # Sub Master
  get 'categories/index'
  get 'waste_types/index'
  get 'disposal_methods/index'
  get 'hazardous_substances/index'
  get 'packages/index'
  get 'shapes/index'
  get 'units/index'
  get 'edi_users/index'
  get 'cars/index'
  get 'roles/index'
  get 'cars/index'
  get 'places/index'
 
  # devise_for :users


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  

  resources :users, :place_users, :traders, :trader_places, :place_users, :permissions, :edi_users, :trader_edi_users, :roles, :category_permissions, :categories, :waste_types, :contracts, :transports, :contract_manifests, :manifests, :units, :packages, :hazardous_substances, :disposal_methods, :shapes, :cars, :waste_registrations

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  # get 'categories/:id/blahblah' => 'categories#blahblah', :as => :blahblah
  

  # Example resource route (maps HTTP verbs to controller actions automatically):


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
