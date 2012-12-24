class Property
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :property_type, polymorphic: true
  belongs_to :user

  field :name, type: String
  field :address1, type: String
  field :address2, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String

  validates :user, :name, :address1, :city, :state, :zip, :presence => true

  delegate :type, to: :property_type
end
