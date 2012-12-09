require 'spec_helper'

describe SingleFamily do
  let(:single_family){FactoryGirl.create(:single_family)}

  describe ".type" do
    specify{single_family.type.should eql("Single Family")}
  end

  describe ".minimum_units" do
    specify{single_family.minimum_units.should eql(1)}
  end
end
