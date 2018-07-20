class PersonalDetail < ActiveRecord::Base
  attr_accessible :comp_id, :contact, :dob, :email, :emp_id, :gender, :name
end
