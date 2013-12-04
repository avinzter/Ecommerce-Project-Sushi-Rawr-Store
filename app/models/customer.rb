class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :first_name, :last_name, :province_id

  validates :first_name, :last_name, :address, :province, :presence => true
  
  belongs_to :province
  has_many :orders
end
