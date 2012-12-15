require 'spec_helper'

describe "user sign in and sign up", js: true do
  describe "GET /" do
    context "when a user has not signed up or signed in" do
      it "should show sign up links" do
        visit root_path
        eventually{page.should have_content("Sign up")}
      end
    end

    context "when a user signs up", js: true do
      it "should show a list of properties" do
        user = FactoryGirl.build :user
        visit root_path
        click_link "Sign up"
        fill_in "Email", :with => user.email
        fill_in "Password", :with => user.password
        fill_in "Password confirmation", :with => user.password
        click_button "Sign up"
        eventually{page.should have_content("Something")}
      end
    end

    context "when a user signs in" do
      it "should show a list of properties" do
        user = FactoryGirl.create :user
        visit root_path
        click_link "Sign in"
        fill_in "Email", :with => user.email
        fill_in "Password", :with => user.password
        click_button "Sign in"
        eventually{page.should have_content("Something")}
      end
    end
  end
end
