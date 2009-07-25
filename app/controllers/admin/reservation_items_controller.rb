class Admin::ReservationItemsController < ApplicationController

  def new
    @reservation_item = ReservationItem.new
    render(:action => 'edit')
  end

  def edit
    @reservation_item = ReservationItem.find(params[:id])
    render(:action => 'edit')
  end

  def create
    @reservation_item = ReservationItem.new(params[:reservation_item])
    if @reservation_item.save
      redirect_to(admin_reservations_path)
    else
      render(:action => 'edit')
    end
  end

  def update
    @reservation_item = ReservationItem.find(params[:id])
    if @reservation_item.update_attributes(params[:reservation_item])
      redirect_to(admin_reservations_path)
    else
      render(:action => 'edit')
    end
  end

  def destroy
    @reservation_item = ReservationItem.find(params[:id])
    @reservation_item.destroy
    flash[:error] = "The item was deleted."
    redirect_to(admin_reservations_path)
  end

end
