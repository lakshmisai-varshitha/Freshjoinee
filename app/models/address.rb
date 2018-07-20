class Address < ActiveRecord::Base
  attr_accessible :city, :comp_id, :country, :district, :doorno, :emp_id, :pincode, :state, :street, :address_type
end
