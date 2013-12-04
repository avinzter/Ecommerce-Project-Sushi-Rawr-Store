class LineItem < ActiveRecord::Base
  attr_accessible :price, :quantity, :product_id

  validates :price, :quantity, :presence => true
  validates :price, :numericality => true

  belongs_to :order
  belongs_to :product
end
