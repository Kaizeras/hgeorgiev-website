Personalwebsite::Application.routes.draw do

  devise_for :admins , :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :posts , only:[:show , :index]
  resources :tag , only: [:show , :index]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get "/" => "posts#index", :as => "root"
  # You can have the root of your site routed with "root"
  get "about" , :controller => "static_pages" , :action => "about" , :as => "about"

  namespace :backend do
     devise_for :admins
      get "admin_index/index"
   root 'admin_index#index'
   resources :posts
   post "posts/:id/preview" => "posts#preview"
   delete "posts/destroy" , to: 'posts#destroy'
   resources :tags 
    
    
  end

end
