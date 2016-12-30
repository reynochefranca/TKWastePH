Rails.application.routes.draw do
  
  get 'home/index'

  get 'permit_registrations/index'
  
  get 'person_registrations/index'
  
  get 'company_registrations/index'
  
  get 'collect_transporter_jwnet_inputs/index'
  
  get 'individual_contracts/index'
  
  get 'emission_operator_contracts/index'
  
  get 'places/index'
  
  get 'cars/index'
  
  get 'roles/index'
  
  get 'edi_users/index'
  
  get 'units/index'
  
  get 'shapes/index'
  
  get 'packages/index'
  
  get 'hazardous_substances/index'
  
  get 'disposal_methods/index'
  
  get 'permissions/index'
  
  get 'waste_types/index'
  
  get 'categories/index'
  
  get 'new_discharge_business_registrations/index'
      get 'new_discharge_business_registrations/trader_search'
  
  get 'new_emission_plant_registrations/index'
  
  
  resources :categories, :waste_types, :disposal_methods, :roles, :cars, :units, :places, :shapes, :edi_users, :packages, :hazardous_substances, :traders, :trader_places, :place_users
  # devise_for :users

  devise_for :users, :skip => [:registrations]
  as :user do
   # get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
