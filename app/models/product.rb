class Product < ActiveRecord::Base
  attr_accessible :description, :isAvailable, :product_name, :product_price

  validates :product_name, :product_price, :isAvailable, :presence => true
  validates :product_name, :uniqueness => true
  
  has_many :line_items
  has_many :orders, :through => :line_items
end
