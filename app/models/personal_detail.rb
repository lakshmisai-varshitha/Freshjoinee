class PersonalDetail < ActiveRecord::Base
  attr_accessible :company_name, :contact, :dob, :email, :empid, :gender, :name
end
