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

  describe "type" do
    let(:property){FactoryGirl.build :property}
    
  end
end
