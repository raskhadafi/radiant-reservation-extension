require File.dirname(__FILE__) + '/../../spec_helper'

describe "/reservation_subscribers/edit" do
  before do
    render 'reservation_subscribers/edit'
  end
  
  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', 'Find me in app/views/reservation_subscribers/edit.rhtml')
  end
end
