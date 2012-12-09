class Property
  include Mongoid::Document
  belongs_to :type, :dependent => :destroy, :polymorphic => true

  field :name, type: String

  validates :name, :presence => true
end
