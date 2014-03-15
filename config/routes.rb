SecretSauce::Application.routes.draw do



  devise_for :users, controllers: { registrations: "users/registrations" } 
  
  root :to => "home#index"

  resources :schools, :except => [:show]
  resources :positions, :only => [:index, :show]
  resources :users, :only => [:update]
  resources :scores, :only => [:create]
  resources :events


  get '/schools/:shortname' => 'schools#show'
  get '/staff' => 'home#staff', as: :staff
  get "/staff/sort_by/:sort_by" => "home#staff", as: 'sort_by'
  get '/*track/:position/:page' => 'positions#position', as: :track
  post '/positions/next' => 'positions#next', as: :next_page
  get '/agreement' => 'positions#agreement', as: :agreement
  get '/faq' => 'home#faq', as: :faq
  get '/fonts' => 'home#fonts'
  post '/agree' => 'positions#agree', as: :agree
  post '/subscribe' => 'home#subscribe'

  get '/welcome' => 'home#welcome', as: :welcome
  get '/admin/schools' => 'schools#admin', as: :school_admin
  get '/skills/:shortname' => 'positions#skill', as: :skill
  get '/skills/' => 'positions#skills', as: :skills
  

  get '/thanks' => 'home#thanks', as: :thanks


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
