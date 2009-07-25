class Admin::ReservationsController < ApplicationController

  def index
    @reservation_items = ReservationItem.find(:all)
    @reservation_subscribers = ReservationSubscriber.find(:all)
    render(:action => 'index')
  end

  def new
    @reservation = Reservation.new
    render(:action => 'index')
  end

end
