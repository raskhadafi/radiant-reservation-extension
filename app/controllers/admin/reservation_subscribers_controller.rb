class Admin::ReservationSubscribersController < ApplicationController

  def new
    @reservation_subscriber = ReservationSubscriber.new
    render(:action => 'edit')
  end

  def edit
    @reservation_subscriber = ReservationSubscriber.find(params[:id])
    render(:action => 'edit')
  end

  def create
    @reservation_subscriber = ReservationSubscriber.new(params[:reservation_subscriber])
    if @reservation_subscriber.save
      redirect_to(admin_reservations_path)
    else
      render(:action => 'edit')
    end
  end

  def update
    @reservation_subscriber = ReservationSubscriber.find(params[:id])
    if @reservation_subscriber.update_attributes(params[:reservation_subscriber])
      redirect_to(admin_reservations_path)
    else
      render(:action => 'edit')
    end
  end

end
