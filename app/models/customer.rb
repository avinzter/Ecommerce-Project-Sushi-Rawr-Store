class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :first_name, :last_name, :province
end
