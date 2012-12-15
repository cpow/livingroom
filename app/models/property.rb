class Property
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :property_type, polymorphic: true

  field :name, type: String
  field :address1, type: String
  field :address2, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String

  validates :name, :address1, :city, :state, :zip, :presence => true

  delegate :type, to: :property_type
end
