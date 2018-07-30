class Employment < ActiveRecord::Base
  attr_accessible :company_name, :comp_name, :designation, :empid, :experience, :from_date, :to_date, :user_id
  belongs_to :user
end