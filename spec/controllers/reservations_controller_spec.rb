require File.dirname(__FILE__) + '/../spec_helper'

describe ReservationsController do

  #Delete these examples and add some real ones
  it "should use ReservationsController" do
    controller.should be_an_instance_of(ReservationsController)
  end


  it "GET 'new_reservation' should be successful" do
    get 'new_reservation'
    response.should be_success
  end

  it "GET 'new_user' should be successful" do
    get 'new_user'
    response.should be_success
  end

  it "GET 'new_reservation_item' should be successful" do
    get 'new_reservation_item'
    response.should be_success
  end
end
