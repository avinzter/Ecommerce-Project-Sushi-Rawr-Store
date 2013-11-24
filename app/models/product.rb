class Product < ActiveRecord::Base
  attr_accessible :description, :isAvailable, :product_name, :product_price
  
  has_many :line_items
  has_many :orders, :through => :line_items
  
end
