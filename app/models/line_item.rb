class LineItem < ActiveRecord::Base
  attr_accessible :price, :quantity

  belongs_to :order
  belongs_to :product
end
