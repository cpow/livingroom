require 'spec_helper'

describe Property do
  describe ".valid" do
    let(:property){FactoryGirl.build :property, name: name}

    context "invalid data" do
      let(:name){""}
      specify{property.should_not be_valid}
    end

    context "valid data" do
      let(:name){Faker::Name.first_name}
      specify{property.should be_valid}
    end
  end

  describe ".property_type" do
    let(:property){FactoryGirl.create :property}
    specify{property.property_type.should be_valid}
    specify{property.type.should eql("Multi Family")}
  end
end
