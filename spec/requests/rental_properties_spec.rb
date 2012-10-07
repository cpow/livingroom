require 'spec_helper'

describe "RentalProperties" do
  describe "GET /rental_properties" do
    it "should show a list of properties" do
      visit  "/"
      page.should have_content("Something")
    end
  end
end
