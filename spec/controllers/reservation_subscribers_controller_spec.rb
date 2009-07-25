require File.dirname(__FILE__) + '/../spec_helper'

describe ReservationSubscribersController do

  #Delete these examples and add some real ones
  it "should use ReservationSubscribersController" do
    controller.should be_an_instance_of(ReservationSubscribersController)
  end


  it "GET 'new' should be successful" do
    get 'new'
    response.should be_success
  end

  it "GET 'edit' should be successful" do
    get 'edit'
    response.should be_success
  end

  it "GET 'list' should be successful" do
    get 'list'
    response.should be_success
  end
end
