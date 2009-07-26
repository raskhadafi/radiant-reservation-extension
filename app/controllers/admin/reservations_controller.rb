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
  
  def edit
    @reservation = Reservation.find(params[:id])
    @reservation_item = ReservationItem.find(@reservation.reservation_item_id)
    @reservation_subscriber = ReservationSubscriber.find(:all)
    render(:action => 'edit')
  end

  def create
    @reservation_item = ReservationItem.find(params[:reservation][:reservation_item])
    params[:reservation][:reservation_item] = @reservation_item
    @reservation_subscriber = ReservationSubscriber.find(:all)
    params[:reservation][:reservation_subscriber] = ReservationSubscriber.find(params[:reservation][:reservation_subscriber])
    params[:reservation][:from]
    @reservation = Reservation.new(params[:reservation])
    if @reservation.save
      redirect_to(edit_admin_reservation_item_url(@reservation_item))
    else
      render(:action => 'edit')
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation_item = ReservationItem.find(params[:reservation][:reservation_item])
    params[:reservation][:reservation_item] = @reservation_item
    params[:reservation][:reservation_subscriber] = ReservationSubscriber.find(params[:reservation][:reservation_subscriber])
    if @reservation.update_attributes(params[:reservation])
      redirect_to(edit_admin_reservation_item_url(@reservation_item))
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
