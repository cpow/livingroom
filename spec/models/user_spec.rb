require 'spec_helper'

describe User do
  let(:user){FactoryGirl.create :user}
  describe ".valid" do
    specify{user.should be_valid}
  end
end
