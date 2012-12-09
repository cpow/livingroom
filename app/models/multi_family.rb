class MultiFamily
  include Mongoid::Document
  include Mongoid::Timestamps
  has_one :property, as: :property_type

  def type
    "Multi Family"
  end

  def minimum_units
    2
  end
end
