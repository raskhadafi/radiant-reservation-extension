require File.dirname(__FILE__) + '/../../spec_helper'

describe "/reservations/new_reservation_item" do
  before do
    render 'reservations/new_reservation_item'
  end
  
  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', 'Find me in app/views/reservations/new_reservation_item.rhtml')
  end
end
