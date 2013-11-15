class Product < ActiveRecord::Base
  attr_accessible :description, :isAvailable, :product_name, :product_price
end
