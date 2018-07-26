class Address < ActiveRecord::Base
  attr_accessible :city, :company_name, :country, :district, :doorno, :empid, :pincode, :state, :street, :address_type, :area, :user_id
belongs_to :user
end
