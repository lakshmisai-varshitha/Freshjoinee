Freshjoinee::Application.routes.draw do
  devise_for :users


  post 'projects/save_permission_for_admin' => 'projects#save_permission_for_admin'

  devise_scope :user do
      #root :to => 'devise/sessions#new'
  root :to =>'projects#save_permission_for_admin'
  get 'users/personaldetails' => 'personals#view'
  get 'users/educationaldetails' => 'educationals#view'
  get 'users/employmentdetails' => 'employments#view'
  get 'users/financedetails' => 'finances#view'


  get 'projects/adduser'=>'projects#adduser'
  get 'projects/add_info_links' =>'projects#add_info_links'
  post 'projects/forsaving' => 'projects#for_saving'
  get 'projects/details' => 'projects#details'

  get 'educationals/filldetails'=>'educationals#filldetails'
  get 'educationals/self_view'=>'educationals#self_view'
  post 'educationals/forsaving'=>'educationals#for_saving'
  get 'educationals/editeducation/:id'=>'educationals#editeducation',as:'educationals_editeducation'
  post 'educationals/updateeducation/:id'=>'educationals#updateeducation',as:'educationals_updateeducation'

  resource :finances  do
    get 'selfview'=>'finances#self_view'
    get 'filldetails'=>'finances#filldetails'
  end

  post 'finances/forsaving'=>'finances#for_saving'
  get 'finances/editinsurance/:id'=>'finances#editinsurance',as:'finances_editinsurance'
  post 'finances/updateprovidentfund'=>'finances#updateprovidentfund'
  post 'finances/updateinsurance/:id'=>'finances#updateinsurance',as:'finances_updateinsurance'
  get 'finances/insurancefill'=>'finances#insurancefill',as:'finances_insurancefill'
  post 'finances/insuranceupdate'=>'finances#insuranceupdate',as:'finances_insuranceupdate'
  get 'finances/editprovidentfund/:id'=>'finances#editprovidentfund',as:'edit_providentfund'
  get 'finances/insurance'=>'finances#insurance',as:'insurance'

  get 'personals/filldetails'=>'personals#filldetails'
  get 'personals/self_view'=>'personals#self_view'
  post 'personals/forsaving'=>'personals#for_saving'
  get 'personals/editpersonal/:id'=>'personals#editpersonal',as:'personals_editpersonal'
  post 'personals/updatepersonal'=>'personals#updatepersonal'
  post 'personals/updateaddress/:id'=>'personals#updateaddress',as:'personals_updateaddress'
  get 'personals/addressfill'=>'personals#addressfill',as:'personals_addressfill'
  post 'personals/addressupdate'=>'personals#addressupdate',as:'personals_addressupdate'
  get 'personals/editaddress/:id'=>'personals#editaddress',as:'edit_address'
  get 'personals/address'=>'personals#address',as:'address'

  get 'employments/self_view'=>'employments#self_view'
  post 'employments/forsaving'=>'employments#for_saving'
  get 'employments/editemployment/:id'=>'employments#editemployment',as:'employments_editemployment'
  post 'employments/updateemployment/:id'=>'employments#updateemployment',as:'employments_updateemployment'
  get 'employments/filldetails'=>'employments#filldetails'
    #get 'personals/address/:id'=>'personals#address', as:'personal_address_id'

end
  #, 
  #:controllers =>{ :registrations =>'memberships'}

  # The priority is based upon order of creation:
  # save_permission_for_admin created -> highest priority.

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
