class Reservation < ActiveRecord::Base
  belongs_to :reservation_item
  belongs_to :reservation_subscriber
  validates_presence_of :reservation_item
  validates_presence_of :reservation_subscriber
  validates_presence_of :from
  validates_presence_of :to
  
end
