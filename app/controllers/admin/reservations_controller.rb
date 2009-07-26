class Admin::ReservationsController < ApplicationController

  def index
    @reservation_items = ReservationItem.find(:all)
    @reservation_subscribers = ReservationSubscriber.find(:all)
    render(:action => 'index')
  end

  def new
    @reservation = Reservation.new
    @reservation_subscriber = ReservationSubscriber.find(:all)
    @reservation_item = ReservationItem.find(params[:id])
    render(:action => 'edit')
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    if @reservation.save
      redirect_to(:back)
    else
      render(:action => 'edit')
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update_attributes(params[:reservation])
      redirect_to(:back)
    else
      render(:action => 'edit')
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    flash[:error] = "The reservation was deleted."
    redirect_to(:back)
  end

end
