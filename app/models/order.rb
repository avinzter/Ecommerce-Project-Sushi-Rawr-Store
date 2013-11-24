class Order < ActiveRecord::Base
  attr_accessible :gst_rate, :pst_rate

  belongs_to :customer
  has_many :line_items
  has_many :products
end
