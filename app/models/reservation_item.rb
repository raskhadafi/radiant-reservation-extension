class ReservationItem < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :reservations

  def self.upcoming
    self.find(:all)
  end

  def self.next
    self.find(:first)
  end
end
