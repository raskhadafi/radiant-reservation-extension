require File.dirname(__FILE__) + '/../spec_helper'

describe Reservation do
  before(:each) do
    @reservation = Reservation.new
  end

  it "should be valid" do
    @reservation.should be_valid
  end
end
