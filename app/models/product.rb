class Product < ActiveRecord::Base
  attr_accessible :description, :isAvailable, :product_name, :product_price, :image, :category_id

  validates :product_name, :product_price, :isAvailable, :category_id, :presence => true
  validates :product_name, :uniqueness => true
  validates :product_price, :category_id, :numericality => true
  
  has_many :line_items
  has_many :orders, :through => :line_items
  has_many :line_items
  belongs_to :category
end
