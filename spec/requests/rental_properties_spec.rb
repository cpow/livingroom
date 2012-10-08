require 'spec_helper'

describe "RentalProperties", :js => true do
  describe "GET /" do
    it "should show a list of properties" do
      visit  root_path
      eventually {page.should have_content("Something")}
    end
  end
end
