class Address < ActiveRecord::Base
  attr_accessible :city, :company_name, :country, :district, :doorno, :empid, :pincode, :state, :street, :address_type, :area
end
