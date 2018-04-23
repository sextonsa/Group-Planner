Rails.application.routes.draw do
  get 'member/new'

  get 'groups/new'

  get 'sessions/new'
  post 'groups/new/:id' => 'groups#member'
  post 'groups/remove/:id' => 'groups#remove'
  root 'users#new'

  resources :users

#  users_new GET    /users/new(.:format)     users#new
# user_index GET    /user(.:format)          user#index
#            POST   /user(.:format)          user#create
#   new_user GET    /user/new(.:format)      user#new
#  edit_user GET    /user/:id/edit(.:format) user#edit
#       user GET    /user/:id(.:format)      user#show
#            PATCH  /user/:id(.:format)      user#update
#            PUT    /user/:id(.:format)      user#update
#            DELETE /user/:id(.:format)      user#destroy

resources :sessions

#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PATCH  /sessions/:id(.:format)      sessions#update
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy


resources :groups
  
  #     groups GET    /groups(.:format)            groups#index
  #            POST   /groups(.:format)            groups#create
  #  new_group GET    /groups/new(.:format)        groups#new
  # edit_group GET    /groups/:id/edit(.:format)   groups#edit
  #      group GET    /groups/:id(.:format)        groups#show
  #            PATCH  /groups/:id(.:format)        groups#update
  #            PUT    /groups/:id(.:format)        groups#update
  #            DELETE /groups/:id(.:format)        groups#destroy
 
 
resources :member

 #member_index GET    /member(.:format)            member#index
 #             POST   /member(.:format)            member#create
 #  new_member GET    /member/new(.:format)        member#new
 # edit_member GET    /member/:id/edit(.:format)   member#edit
 #      member GET    /member/:id(.:format)        member#show
 #             PATCH  /member/:id(.:format)        member#update
 #             PUT    /member/:id(.:format)        member#update
 #             DELETE /member/:id(.:format)        member#destroy






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
