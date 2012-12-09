class Property
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :property_type, polymorphic: true

  field :name, type: String

  validates :name, :presence => true

  delegate :type, to: :property_type
end
