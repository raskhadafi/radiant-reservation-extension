class Admin::ReservationItemsController < ApplicationController
  def index
    @reservation_items = ReservationItem.find(:all)
    render(:action => 'index')
  end

  def new
    @reservation_item = ReservationItem.new
    render(:action => 'edit')
  end

  def create
    @reservation_item = ReservationItem.new(params[:reservation_item])
    if @reservation_item.save
      flash[:notice] = "Successfully added a new ReservationItem."
      redirect_to(admin_reservation_items_path)
    else
      flash[:error] = "Validation errors occurred while processing this form. Please take a moment to review the form and correct any input errors before continuing."
      render(:action => 'edit')
    end
  end

  def edit
    @reservation_item = ReservationItem.find(params[:id])
    render(:action => 'edit')
  end

  def update
    @reservation_item = ReservationItem.find(params[:id])
    if @reservation_item.update_attributes(params[:reservation_item])
      flash[:notice] = "Successfully updated the ReservationItem details."
      redirect_to(admin_reservation_items_path)
    else
      flash[:error] = "Validation errors occurred while processing this form. Please take a moment to review the form and correct any input errors before continuing."
      render(:action => 'edit')
    end
  end

  def destroy
    @reservation_item = ReservationItem.find(params[:id])
    @reservation_item.destroy
    flash[:error] = "The ReservationItem was deleted."
    redirect_to(admin_reservation_items_path)
  end
end
