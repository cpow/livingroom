require 'spec_helper'

describe MultiFamily do
  let(:multi_family){FactoryGirl.create(:multi_family)}

  describe ".minimum_units" do
    specify{multi_family.minimum_units.should eql(2)}
  end

  describe ".type" do
    specify{multi_family.type.should eql("Multi Family")}
  end
end
