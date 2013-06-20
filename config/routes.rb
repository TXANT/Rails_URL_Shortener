ActionController::Routing::Routes.draw do |map|
  map.url ':short', :controller => 'url', :action => 'translate'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
