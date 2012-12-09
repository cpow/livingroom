class SingleFamily
  include Mongoid::Document
  include Mongoid::Timestamps
  has_one :property, as: :property_type

  def type
    "Single Family"
  end

  def minimum_units
    1
  end
end
