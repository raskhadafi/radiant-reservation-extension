require File.dirname(__FILE__) + '/../spec_helper'

describe ReservationSubscriber do
  before(:each) do
    @reservation_subscriber = ReservationSubscriber.new
  end

  it "should be valid" do
    @reservation_subscriber.should be_valid
  end
end
