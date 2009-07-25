# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class ReservationExtension < Radiant::Extension
  version "0.1"
  description "Small Reservation System"
  url "http://github.com/simerom/radiant-reservation-extension"
  
  define_routes do |map|
    map.namespace :admin, :member => { :remove => :get } do |admin|
      admin.resources :reservation_items, :reservation_subscribers
    end
  end
  
  def activate
    admin.tabs.add "Reservation", "/admin/reservation_items", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    admin.tabs.remove "Reservation"
  end
  
end
