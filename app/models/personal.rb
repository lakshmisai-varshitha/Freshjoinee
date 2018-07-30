class Personal < ActiveRecord::Base
  attr_accessible :company_name, :contact, :dob, :email, :empid, :gender, :name, :user_id
  belongs_to :user

end