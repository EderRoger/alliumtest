Alliumtest::Application.routes.draw do
  resources :onion_groups

  resources :root_register_executions

  resources :register_executions

  resources :roots

  resources :onions

  resources :analyses

  resources :analysis_executions

  get "/register_executions/register/:analysis_execution_id" => "register_executions#register" , :as => "register"

  get "/register_executions/get_onions_by_group/:id" => "register_executions#get_onions_by_group"

  get "/register_executions/get_group_by_analysis/:id" => "register_executions#get_group_by_analysis"

  get "/register_executions/report/:onion_id" => "register_executions#report", :as => "report"

  get "/register_executions/report_group/:group_id" => "register_executions#report_group", :as => "report_group"

  get "/analysis_executions/get_onions_from_analysis/:id" => "analysis_executions#get_onions_from_analysis"

  root to: "analyses#index" , :as => "index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
