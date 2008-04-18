ActionController::Routing::Routes.draw do |map|
  map.resource :session
  map.resources :events, :has_many => :talks
  map.resources :iphone
  map.admin '/admin', :controller => 'application', :action => 'login'
  map.login '/login', :controller => 'application', :action => 'login'
  map.logout '/logout', :controller => 'application', :action => 'logout'

  map.root :controller => 'events'
end
