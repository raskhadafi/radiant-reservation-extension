class ReservationSubscriber < ActiveRecord::Base
  validates_presence_of :user_name
  validates_uniqueness_of :user_name
  validates_presence_of :email
  validates_format_of :email,
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

end
