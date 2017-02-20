Rails.application.routes.draw do
  


  devise_for :users
  #get 'home_info_enquiries/index'
  #get 'home_info_enquiries/new'
  #$get 'home_info_enquiries/create'
  resources :home_photos
  resources :homes
#  resources  :contact_pages, :only => [:create , :index]
  resources :pages , :only => [:new, :create]
  resources :home_info_enqueries
  get 'pages/single_wide' => 'pages#single_wide', :as => 'single_wide'
  get 'pages/double_wide' => 'pages#double_wide', :as => 'double_wide'
  get 'pages/triple_wide' => 'pages#triple_wide', :as => 'triple_wide'
  get 'pages/other' => 'pages#other', :as => 'other'
  get 'pages/hotdeals' => 'pages#hotdeals', :as => 'hotdeals'
  root :to => "pages#index"
  get 'contact' => 'contact_pages#new', :as => 'contact_pages'
  post 'contact' => 'contact_pages#create'
  get 'pages/about_us' => 'pages#about_us'
  get 'pages/finance' => 'pages#finance'
  get 'pages/construction' => 'pages#construction'
  get 'pages/energy_smart' => 'pages#energy_smart'
  get 'pages/findingland' => 'pages#findingland'
   get 'pages/insurance' => 'pages#insurance'
end
