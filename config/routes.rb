Freshjoinee::Application.routes.draw do
  devise_for :users


  get 'projects/first' => 'projects#first'

  devise_scope :user do
      #root :to => 'devise/sessions#new'
  root :to =>'projects#first'
  get 'users/personaldetails' => 'personals#view'
  get 'users/educationaldetails' => 'educationals#view'
  get 'users/employmentdetails' => 'employments#view'
  get 'users/financedetails' => 'finances#view'


  get 'projects/second'=>'projects#second'
  get 'projects/third' =>'projects#third'
  get 'projects/forsaving' => 'projects#for_saving'
    get 'projects/details' => 'projects#details'

  get 'educationals/filldetails'=>'educationals#filldetails'
    get 'educationals/self_view'=>'educationals#self_view'
  get 'educationals/forsaving'=>'educationals#for_saving'
  get 'educationals/editeducation/:id'=>'educationals#editeducation',as:'educationals_editeducation'
  get 'educationals/updateeducation/:id'=>'educationals#updateeducation',as:'educationals_updateeducation'

  get 'finances/filldetails'=>'finances#filldetails'
  get 'finances/selfview'=>'finances#self_view'
  get 'finances/forsaving'=>'finances#for_saving'
  get 'finances/editinsurance/:id'=>'finances#editinsurance',as:'finances_editinsurance'
  get 'finances/updateprovidentfund'=>'finances#updateprovidentfund'
  get 'finances/updateinsurance/:id'=>'finances#updateinsurance',as:'finances_updateinsurance'
  get 'finances/insurancefill'=>'finances#insurancefill',as:'finances_insurancefill'
  get 'finances/insuranceupdate'=>'finances#insuranceupdate',as:'finances_insuranceupdate'
  get 'finances/editprovidentfund/:id'=>'finances#editprovidentfund',as:'edit_providentfund'
  get 'finances/insurance'=>'finances#insurance',as:'insurance'

  get 'personals/filldetails'=>'personals#filldetails'
  get 'personals/self_view'=>'personals#self_view'
get 'personals/forsaving'=>'personals#for_saving'
    get 'personals/editpersonal/:id'=>'personals#editpersonal',as:'personals_editpersonal'
   get 'personals/updatepersonal'=>'personals#updatepersonal'
  get 'personals/updateaddress/:id'=>'personals#updateaddress',as:'personals_updateaddress'
  get 'personals/addressfill'=>'personals#addressfill',as:'personals_addressfill'
  get 'personals/addressupdate'=>'personals#addressupdate',as:'personals_addressupdate'
  get 'personals/editaddress/:id'=>'personals#editaddress',as:'edit_address'
  get 'personals/address'=>'personals#address',as:'address'

  get 'employments/self_view'=>'employments#self_view'
get 'employments/forsaving'=>'employments#for_saving'
    get 'employments/editemployment/:id'=>'employments#editemployment',as:'employments_editemployment'
    get 'employments/updateemployment/:id'=>'employments#updateemployment',as:'employments_updateemployment'
  get 'employments/filldetails'=>'employments#filldetails'
    #get 'personals/address/:id'=>'personals#address', as:'personal_address_id'

end
  #, 
  #:controllers =>{ :registrations =>'memberships'}

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
