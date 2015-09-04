Personalwebsite::Application.routes.draw do

  devise_for :admins , :path => '',  :controllers => {:sessions => "sessions"} , :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :posts , only:[:show , :index]



  get "/" => "posts#index", :as => "root"
  get 'tags/:tag' => 'posts#index', as: "tag"

  get "about" , :controller => "static_pages" , :action => "about" , :as => "about"

  namespace :backend do
       devise_for :admins
        get "admin_index/index"
     root 'admin_index#index'
     resources :posts
     post "posts/preview" , to: "posts#preview"
     delete "posts/destroy" , to: 'posts#destroy'



  end

end
